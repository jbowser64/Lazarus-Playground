unit MyFirstForm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls, TAGraph, TASeries, MySecondForm;

type

  { TForm1 }

    TForm1 = class(TForm)
      btnCalculate: TButton;
      btnListBox: TButton;
      Chart1: TChart;
      Chart1LineSeries1: TLineSeries;
      ClearMemo: TButton;
      CloseForm: TButton;
      edtNumber1: TEdit;
      edtNumber2: TEdit;
      edtNumber3: TEdit;
      edtOutputNum: TEdit;
      Image1: TImage;
      Image2: TImage;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      lblTitle: TLabel;
      ListBox1: TListBox;
      Memo1: TMemo;
      PanelOne: TPanel;
      procedure btnCalculateClick(Sender: TObject);
      procedure btnListBoxClick(Sender: TObject);
      procedure btnListBoxMouseEnter(Sender: TObject);
      procedure btnListBoxMouseLeave(Sender: TObject);
      procedure ClearMemoClick(Sender: TObject);
      procedure CloseFormClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalculateClick(Sender: TObject);

//initialize and declare number variables
             var
             num1 : integer;
             num2 : integer;
             num3 : integer;
             i : integer;
             chartnum :integer;

                  begin
                  //store TextEdit values from user input into number variables

                  num1 := strtoint(edtNumber1.Text);
                       if num1 < 1
                          then
                              Begin
                          ShowMessage('Please enter a number 1 to 10 in Number 1');
                          edtNumber1.clear;
                              end;

                       if num1  > 10
                          then
                              Begin
                          ShowMessage('Please enter a number 1 to 10 in Number 1');
                          edtNumber1.clear;
                              end;

                  num2 := strtoint(edtNumber2.Text) ;
                       if num2 < 11
                          then
                              Begin
                              ShowMessage('Please enter a number 11 to 20 in Number 2');
                              edtnumber2.clear;
                              end;
                       if num2  > 20
                          then
                              Begin
                              ShowMessage('Please enter a number 11 to 20 in Number 2');
                              edtnumber2.clear;
                              end;


                  num3 := strtoint(edtnumber3.Text) ;
                       if num3 < 21
                          then
                              Begin
                              ShowMessage('Please enter a number 21 to 30 in Number 3');
                              edtnumber3.clear;
                              end;
                       if num3  > 30
                          then
                               Begin
                              ShowMessage('Please enter a number 21 to 30 in Number 3');
                              edtnumber3.clear;
                              end;


                  //store sum of Num1-Num3 in Output TextEdit field
                  edtOutputNum.Text:= (num1 + num2 + num3).ToString;
                       if strtoint(edtOutputNum.Text) < 3
                          then edtoutputnum.clear ;
                       if strtoint(edtOutputNum.Text) > 60
                          then edtoutputnum.clear;

                  // Show arithmatic in the memo box
                  Memo1.Lines.Add((num1.ToString) + ' + ' + (num2.tostring) + ' + ' +
                  (num3.tostring) + ' = ' + (edtoutputnum.text));

                  chartnum := strtoint(edtoutputnum.text);
                       begin
                         i := 0;
                         Chart1LineSeries1.AddY(chartnum);
                       end;

                  end;


//TRY TO FIGURE OUT THIS COUNTER TECHNIQUE***************************
procedure TForm1.btnListBoxClick(Sender: TObject);
          const
          StatCounter: Integer=0;
          var
          AddNum: String;

              begin

              StatCounter:= StatCounter + 1;

              AddNum:= StatCounter.tostring;

              ListBox1.Items.Add(AddNum);

              end;

procedure TForm1.btnListBoxMouseEnter(Sender: TObject);
begin
   Image2.Picture.Clear;
end;

procedure TForm1.btnListBoxMouseLeave(Sender: TObject);
begin

Image2.Picture.LoadFromFile('Cat.jpg');
end;

procedure TForm1.ClearMemoClick(Sender: TObject);

//Button clears the Memo1 Box that will fill up with the arithmatic
begin
      Memo1.Clear;
      edtNumber1.clear;
      edtNumber2.Clear;
      edtNumber3.Clear;
      edtOutputNum.Clear;
      edtNumber1.SetFocus;
      Chart1LineSeries1.Clear;
end;

procedure TForm1.CloseFormClick(Sender: TObject);
begin
Form1.Hide;
Form2.Show;


end;

procedure TForm1.FormCreate(Sender: TObject);
//displays TA Logo in the picture box as the form is loaded
           begin
           image1.Picture.LoadFromFile('TA Logo.jpg');
           Image2.Picture.LoadFromFile('Cat.jpg');
           end;



end.

