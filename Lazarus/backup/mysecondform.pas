unit MySecondForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Form2Close: TButton;
    Edit1: TEdit;
    procedure Form2CloseClick(Sender: TObject);
    procedure Edit1MouseEnter(Sender: TObject);
    procedure Edit1MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.Edit1MouseEnter(Sender: TObject);
begin
      Edit1.Caption:='';
end;

procedure TForm2.Form2CloseClick(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.Edit1MouseLeave(Sender: TObject);
begin
     Edit1.Caption:='Enter Info Here';
end;

end.

