program ShinPlot;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, fAbout, fColors, fpm, fXpm, main;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  {$PUSH}{$WARN 5044 OFF}
  Application.Title:='ShinPlot';
  Application.Scaled:=True;
  Application.MainFormOnTaskbar:=True;
  {$POP}
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfAboutIDE, fAboutIDE);
  Application.CreateForm(TfColor, fColor);
  Application.CreateForm(TfParams, fParams);
  Application.CreateForm(TfX11Params, fX11Params);
  Application.Run;
end.

