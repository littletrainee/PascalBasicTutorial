# 物件

1. 物件檔案所需結構與範例如下

```pascal

{$mode objfpc} // 此處的宣告是讓 FPC 使用物件導向編譯模式
{$H+} // 此處宣告是讓 FPC 啟用長字串

unit person_unit; // 當該單位名稱，用以表示目前的檔案是單一物件單位

interface // 該聲明主要是讓其他單位或程式使用

// 聲明物件類型
type
    tperson =   class
        public
            name:   string;
            age:   integer;
            constructor Create(aname:string; aage: integer);
    end;


// 實現前面所定義的方法簽章，與建構子
implementation

constructor tperson.create(aname:string; aage: integer);
begin
    self.name :=   aname;
    self.age :=   aage;
end;

end. // 該部分表示當前物件的檔案結束
```

2. 當編寫完成後使用 `FPC` 進行偵錯編譯才可建立單位連結檔(`.ppu`)使主程式做連結。

3. 主程式要使用物件檔案的內容同樣需要有宣告，程式碼範例如下：

```pascal
{$mode objfpc} // 此處的宣告是讓 FPC 使用物件導向編譯模式
{$m+} // 此處宣告是讓 FPC 顯示類型資訊，若無則會無法正確使用物件

program HelloWorld;

uses person_unit; // 使用的 單位檔案名稱

var
    person :   tperson;

begin
    person :=   tperson.tperson('john',20);
    writeln(person.name);
    writeln(person.age);
end.

```
