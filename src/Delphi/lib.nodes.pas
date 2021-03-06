// Copyright (c) 2016, Jordi Corbilla
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// - Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
// - Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation
// and/or other materials provided with the distribution.
// - Neither the name of this library nor the names of its contributors may be
// used to endorse or promote products derived from this software without
// specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.

unit lib.nodes;

interface

uses
  FMX.StdCtrls, FMX.Objects;

type
  TNode = class(TObject)
  private
    FColorOff: cardinal;
    FColorOn: cardinal;
    FAction: string;
    FlabelNode: TLabel;
    FRoundRect: TRoundRect;
    procedure SetAction(const Value: string);
    procedure SetColorOff(const Value: cardinal);
    procedure SetColorOn(const Value: cardinal);
    procedure SetLabelNode(const Value: TLabel);
    procedure SetRoundRect(const Value: TRoundRect);
    function GetAction() : string;
    function GetColorOn() : cardinal;
    function GetColorOff() : cardinal;
    function GetLabelNode() : TLabel;
    function GetRoundRect() : TRoundRect;
  public
    property Action : string read GetAction write SetAction;
    property ColorOn : cardinal read GetColorOn write SetColorOn;
    property ColorOff : cardinal read GetColorOff write SetColorOff;
    property LabelNode : TLabel read GetLabelNode write SetLabelNode;
    property RoundRect : TRoundRect read GetRoundRect write SetRoundRect;
    constructor Create(action : string; colorOn : cardinal; colorOff : cardinal; labelNode: TLabel; RoundRect: TRoundRect);
  end;

implementation

{ TNode }

constructor TNode.Create(action: string; colorOn, colorOff: cardinal; labelNode: TLabel; RoundRect: TRoundRect);
begin
  SetAction(action);
  SetColorOn(colorOn);
  SetColorOff(colorOff);
  SetLabelNode(labelNode);
  SetRoundRect(RoundRect);
end;

function TNode.GetAction: string;
begin
  result := FAction;
end;

function TNode.GetColorOff: cardinal;
begin
  result := FColorOff;
end;

function TNode.GetColorOn: cardinal;
begin
  result := FColorOn;
end;

function TNode.GetLabelNode: TLabel;
begin
  result := FLabelNode;
end;

function TNode.GetRoundRect: TRoundRect;
begin
  result := FRoundRect;
end;

procedure TNode.SetAction(const Value: string);
begin
  FAction := Value;
end;

procedure TNode.SetColorOff(const Value: cardinal);
begin
  FColorOff := Value;
end;

procedure TNode.SetColorOn(const Value: cardinal);
begin
  FColorOn := Value;
end;

procedure TNode.SetLabelNode(const Value: TLabel);
begin
  FLabelNode := Value;
end;

procedure TNode.SetRoundRect(const Value: TRoundRect);
begin
  FRoundRect := Value;
end;

end.
