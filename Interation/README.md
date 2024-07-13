# 反覆運算

在 `Pascal` 當中有三種反覆運算使用方式

1. `for-loop`
2. `while-do`
3. `repeat...until`

## `for-loop`

類似 `Python` 的 `for` 迴圈，其運算次數是可預期的，基礎程式碼結構如下：

```pascal
program HelloWorld;
var
    i:   integer;
begin
    for i := 1 to 5 do
        begin
            writeln(i);
        end;
end.
```

除了迭代所使用的 i 需要在前面先宣告之外，其餘使用方式皆與其他語言雷同。

## `while-do`

類似 `Python` 的 `while` 迴圈，其運算次數是無法預期的，基礎程式結構如下：

```pascal
program HelloWorld;
var
    i:   integer ;
begin
    while i = 0 do
        begin
            writeln(i);
        end;
end.
```

## `repeat-until`

在 `Python` 當中並無類似的保留字，其主要用途是表示中間的運算至少要執行一次，類似於 `C` 的 `do...while` 功能。

```pascal
program HelloWorld;
uses sysutils;

var
    i:   integer ;
begin
    repeat
        begin
            writeln(i);
            if i >5 then
                begin
                    writeln('current value:'+IntToStr(i))
                end
            else
                begin
                    writeln('Current Vale:'+IntToStr(i))
                end;
            i := i+1;
        end
    until i>10;
end.
```

## 跳躍陳述式

通常迴圈都是基於上述的方式而使用，其中可能會使用到 `continue`、`break`、`goto`或`exit`。

### `continue` 與 `break`

此兩個跳躍陳述式如同其他語言一樣並無特別的差別。

### `goto`

`Pascal` 相比起 `C` 而言 需要額外的宣告 `label` 標示符，否則編譯器必定報錯，程式碼如下。

```pascal
program HelloWorld;

uses sysutils;

label afk; // 必須宣告名稱

var
    i:   integer ;
begin
    repeat
        begin
            writeln(i);
            if i >5 then
                begin
                    writeln('current value:'+IntToStr(i));
                    goto afk;
                end
            else
                begin
                    writeln('Current Vale:'+IntToStr(i));
                end;
            writeln('ok');
            afk:
                   i := i+1;
        end
    until i>10;
end.
```

### `exit`

`Pascal` 的跳離陳述式 `exit` 與 `C` 的 `return` 相同的概念，同樣是跳離開當前的 `反覆運算` 、 `procedure` 或 `function` 但概念如同字面的意思 `離開` 而非無資料返回，範例程式碼如下。

```pascal
program HelloWorld;

uses sysutils;

var
    i:   integer ;
begin
    repeat
        begin
            writeln(i);
            if i >5 then
                begin
                    writeln('current value:'+IntToStr(i));
                    exit;
                end
            else
                begin
                    writeln('Current Vale:'+IntToStr(i));
                end;
            i := i+1;
        end;
    until i>10;
end.
```
