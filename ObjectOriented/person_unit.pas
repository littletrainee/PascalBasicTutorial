
{$mode objfpc}
{$H+}

unit person_unit;

interface

//! 抽象定義

type 
    tperson =   class
        public 
            name:   string;
            age:   integer;
            constructor tperson(aname:string; aage: integer);
    end;

    //! 實現前面所定義的方法簽章

implementation

constructor tperson.tperson(aname:string; aage: integer);
begin
    self.name :=   aname;
    self.age :=   aage;
end;

end
