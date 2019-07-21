
function makeTable(ele){
    $table=$("<table border=1>");

    // 이름(cloumn)
    for(var i=0; i<1; i++){
        $tr=$("<tr>");

        for(var j=0; j<ele.eq(0).children().length; j++){   // cloumn갯수만큼 돈다(5번)
            $td=$("<th>").append(ele.eq(0).children().eq(j).prop("tagName"));   // prop : "SPAN" <-- TAGNAME은 HTML파일에서 대문자로 쓰기 때문에 대문자로가져오고, 
            $tr.append($td);                                                    // attr : 얘로 tagName을 가져오려면 정의되지 않아서 가져올 수 없다.
        }
        $table.append($tr);
    }

    for(var i=0; i<ele.length; i++){
        $tr=$("<tr>");
        for(var j=0; j<ele.eq(i).children().length; j++){
            $td=$("<td>").append(ele.eq(i).children().eq(j).text());
            $tr.append($td);    // 100 / king SKING	/ 515.123.4567	/ 1987. 6. 17 오전 12:00:00 을 한줄 만들고
        }
        $table.append($tr);     // table 최 하단에 append => ele.eq(i).children()의 길이만큼 반복(206)
    }
    return $table;
}