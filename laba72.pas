Program laba72;
   var
      s,str:string;
      i,j,k,lastComma, flag:integer;
   begin
    Writeln('������ ��ப�');
    Readln(s);
    Writeln;
    Writeln('��砫쭠� ��ப�: ', s);
    Readln;
     for i:=1 to length(s) do begin
        if s[i]=',' then begin
                flag:=1;
                lastComma:=i;
                Writeln('������ ������� �� ����樨 ', i);
                readln;
        end;
         writeln('���� ', i, ' ' , s[i]);
     end;
     if flag=1 then begin
        Writeln('��᫥���� ������ ��室���� �� ����樨 ', lastComma);
        writeln('��砫�� ᨬ��� ��᫥����� ᫮�� ', s[lastComma+1]);

        if s[1]=s[lastComma+1] then begin
                 writeln('��ࢮ� ᫮�� ��稭����� � ��ࢮ�� ᨬ���� ��᫥����� ᫮��');
                 write(s[1]);
                 i:=2;
                 While s[i]<>',' do begin
                        write(s[i]);
                        i:=i+1;
                 end;
                 Writeln;

        end;
        for i:=1 to lastComma-1 do begin
          if (s[i]=',') and (s[i+1]=s[lastComma+1]) then begin
                j:=i+1;
                While (s[j]<>',') or (s[j]<>'.')  do begin
                        write(s[j]);
                        j:=j+1;
                end;

                Writeln;
                if flag=0 then writeln('��� ⠪�� ᫮�');
                readln;
        end;

     end;


    end
    else writeln('������� ���');


     Readln;

   end.
