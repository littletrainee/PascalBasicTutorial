# 方法

在 `Python` 當中有無指定回傳值類型對於直譯器並無任何影響，然而對 `C` 這類需要編譯的語言而言需指定回傳的類型，`Pascal` 與其最大不同的地方在於無回傳值需使用 `procedure`，有回傳值需使用 `function`。

**需特別注意的是 `Pascal` 的方法必須放在會呼叫該方法的位置之前，這部分有點類似 `Python` 的直譯順序**

## `procedure`

`procedure` 的編寫方式如下。

```pascal
program HelloWorld;

uses sysutils;

procedure say(a,b :string; d :integer);
var
    c :   string =   ' ';
begin
    writeln(a + c + b+inttostr(d));
end;

begin
    say('hello','world',100) ;
end.
```

由於不會有回傳值，因此不用指定回傳值的類型。

傳入的參數相同類型可以集中寫在一起後再統一指定該參數類型，但這對於參數的順序可能會硬性規定。

## `function`

`function` 的回傳值有兩種方式，一是以經典 `Pascal` 的 `方法名稱` 作為回傳值的接收變數，一是以 `FPC` 擴充的 `result` 作為回傳值的接收變數，分別顯示如下。

### `方法名稱`

該方法以經典 `Pascal` 的 `方法名稱` 作為回傳值的接收變數，若考慮不使用額外擴充的 `result` 回傳值接收變數，需使用該方法，但較容易混淆可讀性。

```pascal
program HelloWorld;


function plus(a:integer; b:integer):   integer;

begin
    plus := (a + b);
end;

begin
    writeln(plus(1,2)) ;
end.
```

## 擴充的 `result`

該方法主要是以 `Delphi` 或 `FPC` 擴充的 `result` 變數作為回傳值的接收變數，雖降低混淆可讀性的問題，但相對於經典 `Pascal` 的 `方法名稱` 作為回傳值的接收變數，需要在程式碼內或是編譯時進行額外設置才可使用。

```pascal
program HelloWorld;

{$modeswitch result+}
function plus(a:integer; b:integer):   integer;

begin
    result := a + b;
end;

begin
    writeln(plus(1,2)) ;
end.

```
