//---------------------------------------------------------
//--------------------+++--> pageabout.c - KAZUBON 1997-1998
//---------------------------------------------------------*/
// Modified by Stoic Joker: Wednesday, March 3 2010 - 7:17:33
#include "tclock.h"

static void OnInit(HWND hDlg);
static void OnApply(HWND hDlg);
static void OnLinkClicked(HWND hDlg, UINT id);

LRESULT CALLBACK LabLinkProc(HWND, UINT, WPARAM, LPARAM);
static WNDPROC oldLabProc = NULL;
static HCURSOR hCurHand = NULL;
static HFONT hfontLink, hFontBold;

static BOOL GetStartupFile(HWND hDlg,char* filename);
static void AddStartup(HWND hDlg);
static void RemoveStartup(HWND hDlg);
BOOL CreateLink(LPCSTR fname, LPCSTR dstpath, LPCSTR name);
#define SendPSChanged(hDlg) SendMessage(GetParent(hDlg),PSM_CHANGED,(WPARAM)(hDlg),0)
/////////////////////////////////////////////////////////////////////////////////////
BOOL CALLBACK PageAboutProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	switch(message) {
	case WM_INITDIALOG:
		OnInit(hDlg);
		return TRUE;
	case WM_CTLCOLORSTATIC: {
		int id=GetDlgCtrlID((HWND)lParam);
		if(id==IDC_ABT_WEBuri || id==IDC_ABT_MAILuri) {
			SetTextColor((HDC)wParam,RGB(0,0,255));
		}
		break;}
	case WM_COMMAND: {
		WORD id, code;
		id = LOWORD(wParam);
		code = HIWORD(wParam);
		if((id==IDC_ABT_WEBuri || id==IDC_ABT_MAILuri) && code==STN_CLICKED) {
			OnLinkClicked(hDlg, id);
		}
		if((id==IDC_STARTUP) && ((code==BST_CHECKED) || (code==BST_UNCHECKED))) {
			SendPSChanged(hDlg);
		}
		return TRUE;}
	case WM_NOTIFY:
		switch(((NMHDR*)lParam)->code) {
		case PSN_APPLY: OnApply(hDlg); break;
		} return TRUE;
	case WM_DESTROY:
		DeleteObject(hfontLink);
		DeleteObject(hFontBold);
		DestroyWindow(hDlg);
		break;
	}
	return FALSE;
}
//================================================================================================
//--------------------+++--> Initialize Properties Dialog & Customize T-Clock Controls as Required:
static void OnInit(HWND hDlg)   //----------------------------------------------------------+++-->
{
	char path[MAX_PATH];
	int controlid;
	LOGFONT ftBold;
	SetDlgItemText(hDlg, IDC_ABT_TITLE, ABT_TITLE);
	SetDlgItemText(hDlg, IDC_ABT_TCLOCK, ABT_TCLOCK);
	
	hFontBold = (HFONT)SendMessage(hDlg, WM_GETFONT, 0, 0);
	GetObject(hFontBold, sizeof(LOGFONT), &ftBold);
	ftBold.lfWeight = FW_BOLD;
	hFontBold = CreateFontIndirect(&ftBold);
	
	for(controlid=IDC_ABT_TITLE; controlid<=IDC_ABT_MAIL; ++controlid){
		SendDlgItemMessage(hDlg,controlid,WM_SETFONT,(WPARAM)hFontBold,0);
	}
	if(!hCurHand) hCurHand = LoadCursor(NULL, IDC_HAND);
	
	oldLabProc = (WNDPROC)GetWindowLongPtr(GetDlgItem(hDlg, IDC_ABT_MAILuri), GWL_WNDPROC);
	SetWindowLongPtr(GetDlgItem(hDlg, IDC_ABT_WEBuri), GWL_WNDPROC, (LONG_PTR)LabLinkProc);
	SetWindowLongPtr(GetDlgItem(hDlg, IDC_ABT_MAILuri), GWL_WNDPROC, (LONG_PTR)LabLinkProc);
//==================================================================================

	CheckDlgButton(hDlg,IDC_STARTUP,GetStartupFile(hDlg,path));
}
/*--------------------------------------------------
  "Apply" button ----------------- IS NOT USED HERE!
--------------------------------------------------*/
void OnApply(HWND hDlg)
{
	if(IsDlgButtonChecked(hDlg,IDC_STARTUP))
		AddStartup(hDlg);
	else
		RemoveStartup(hDlg);
}
/*--------------------------------------------------
 -- IF User Clicks eMail - Fire up their Mail Client
--------------------------------------------------*/
void OnLinkClicked(HWND hDlg, UINT id)
{
	char str[128];
	if(id==IDC_ABT_MAILuri) {
		strcpy(str, "mailto:");
		GetDlgItemText(hDlg, id, str+strlen(str), 64);
		strcat(str, "?subject=About "); strcat(str, CONF_START);
	}else
		GetDlgItemText(hDlg, id, str, 64);
	ShellExecute(hDlg, NULL, str, NULL, "", SW_SHOW);
}
//================================================================================================
//-------{ Give me a Hand...(Icon) }------+++--> Change Curser to Hand When Mousing Over Web Links:
LRESULT CALLBACK LabLinkProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)   //----+++-->
{
	switch(message) {
	case WM_SETCURSOR:
		SetCursor(hCurHand);
		return TRUE;
	}
	return CallWindowProc(oldLabProc, hwnd, message, wParam, lParam);
}
//================================================================================
//---------------------------+++--> Does startup file exist? Also creates filename:
BOOL GetStartupFile(HWND hDlg,char* filename){   //-------------------------+++-->
	LPITEMIDLIST pidl;
	size_t offset;
	if(SHGetSpecialFolderLocation(hDlg,CSIDL_STARTUP,&pidl)!=S_OK || !SHGetPathFromIDList(pidl,filename)){
		*filename='\0';
		return 0;
	}
	offset=strlen(filename);
	filename[offset]='\\';
	filename[offset+1]='\0'; // old Stoic Joker link
	strcat(filename,CONF_START_OLD);
	strcat(filename,".lnk");
	if(PathFileExists(filename))
		return 1;
	filename[offset+1]='\0'; // new name
	strcat(filename,CONF_START);
	strcat(filename,".lnk");
	if(PathFileExists(filename))
		return 1;
	return 0;
}
//================================================================================================
//----------------------------------------+++--> Remove Launch T-Clock on Windows Startup ShortCut:
void RemoveStartup(HWND hDlg)   //----------------------------------------------------------+++-->
{
	char path[MAX_PATH];
	if(!GetStartupFile(hDlg,path))
		return;
	DeleteFile(path);
}
//======================================
//--+++-->
void AddStartup(HWND hDlg)
{
	char path[MAX_PATH], myexe[MAX_PATH];
	if(GetStartupFile(hDlg,path) || !*path)
		return;
	*strrchr(path,'\\')='\0';
	GetModuleFileName(GetModuleHandle(NULL),myexe,MAX_PATH);
	CreateLink(myexe,path,CONF_START);
}
//==========================
//--+++--> Create Launch T-Clock on Windows Startup ShortCut:
BOOL CreateLink(LPCSTR fname, LPCSTR dstpath, LPCSTR name)
{
	HRESULT hres;
	IShellLink* psl;
	
	CoInitialize(NULL);
	
	hres = CoCreateInstance(&CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER, &IID_IShellLink, (LPVOID*)&psl);
	if(SUCCEEDED(hres)) {
		IPersistFile* ppf;
		char path[MAX_PATH];
		
		psl->lpVtbl->SetPath(psl, fname);
		psl->lpVtbl->SetDescription(psl, name);
		strcpy(path, fname);
		del_title(path);
		psl->lpVtbl->SetWorkingDirectory(psl, path);
		
		hres = psl->lpVtbl->QueryInterface(psl, &IID_IPersistFile, (LPVOID*)&ppf);
		
		if(SUCCEEDED(hres)) {
			WORD wsz[MAX_PATH];
			char lnkfile[MAX_PATH];
			strcpy(lnkfile, dstpath);
			add_title(lnkfile, (char*)name);
			strcat(lnkfile, ".lnk");
			
			MultiByteToWideChar(CP_ACP, 0, lnkfile, -1, wsz, MAX_PATH);
			
			hres = ppf->lpVtbl->Save(ppf, wsz, TRUE);
			ppf->lpVtbl->Release(ppf);
		}
		psl->lpVtbl->Release(psl);
	}
	CoUninitialize();
	
	if(SUCCEEDED(hres)) return TRUE;
	else return FALSE;
}
