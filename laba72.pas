Program laba72;
   var
      s,str:string;
      i,j,k,lastComma, flag:integer;
   begin
    Writeln('Введите строку');
    Readln(s);
    Writeln;
    Writeln('Начальная строка: ', s);
    Readln;
     for i:=1 to length(s) do begin
        if s[i]=',' then begin
                flag:=1;
                lastComma:=i;
                Writeln('Запятая найдена на позиции ', i);
                readln;
        end;
         writeln('Цикл ', i, ' ' , s[i]);
     end;
     if flag=1 then begin
        Writeln('последняя запятая находится на позиции ', lastComma);
        writeln('начальный символ последнего слова ', s[lastComma+1]);

        if s[1]=s[lastComma+1] then begin
                 writeln('Первое слово начинается с первого символа последнего слова');
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
                if flag=0 then writeln('Нет таких слов');
                readln;
        end;

     end;


    end
    else writeln('Запятых нет');


     Readln;

   end.
