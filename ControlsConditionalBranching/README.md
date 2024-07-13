# 可控制條件式分支

在 `Python` 內有兩種方式，分別是 `if-else` 與 `match-case(switch)`。

## `if-else`

`Python` 當中是以`縮排`作為作用域區隔，`Pascal` 是以 `begin...end` 為作用域範圍。

若條件分支當中只有單一行要處理可以使用下面的程式碼方式編寫：
<span id='li'></span>

```pascal
program HelloWorld;
var
    age:   integer =   31;

begin
    if age > 30 then
        writeln('yes')
    else
        writeln('no');
end.
```

該方式是屬於簡化的方式，但對於未來的擴充會有一定的阻礙，主要是 `then` 後方的單一行程式碼不可加上 `;` 否則會使編譯無法通過，若要統一編寫方式最好使用下面的程式碼方式編寫：

```pascal
program HelloWorld;
var
    age:   integer =   30;

begin
    if age > 30 then
        begin
            writeln('great');
        end
    else if age <30 then
        begin
            writeln('less');
        end
    else
        begin
            writeln('equal');
        end;
end.
```

上述程式碼的好處是對於未來的擴充不用調整作用域內的格式，且可以完整分隔 `if-else` 的判斷顯示方式與作用域內的程式碼格式。

### 三元表達式

`Python` 有類似如下的`三元表達式`：

```Python
def afk(source: float):
    print("yes" if source == 3.14 else "no")
afk(3.14)
```

然而 `Pascal` **未有該功能**，較相近的功能類似於[前方所述的方式](#li)

## `match-case(switch)`

`Python` 自 `3.10` 後新增 (match-case)，類似其他語言的 `switch` ，在 `pascal` 也有相同的部分但關鍵字不同，其程式碼如下：

```pascal
program HelloWorld;
var
    age:   integer =   30;

begin
    case age of
        31:
            writeln('great');
        29:
            writeln('less');
        else
            begin
                write('valu is:');
                writeln('equal');
            end
    end;
end.
```

`case` 的各分支內同樣可以使用 `begin...end` 使用作用域。
