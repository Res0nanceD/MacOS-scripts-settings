#!/bin/bash

echo "============================"
echo "📦 Типы содержимого буфера"
echo "============================"

osascript -l JavaScript <<'EOF'
ObjC.import('AppKit');
ObjC.import('Foundation');

function decodeData(data, type) {
    if (!data) return "(нет данных)";
    
    // Пытаемся интерпретировать как текст
    let string = ObjC.unwrap($.NSString.alloc.initWithDataEncoding(data, $.NSUTF8StringEncoding));
    if (string) {
        return string;
    }

    // Если не текст — вернуть hex-представление (первые байты)
    let len = Math.min(data.length, 64); // первые 64 байта
    let buffer = data.bytes;
    let hex = [];
    for (let i = 0; i < len; i++) {
        hex.push(('00' + buffer[i].toString(16)).slice(-2));
    }
    return hex.join(' ');
}

var pb = $.NSPasteboard.generalPasteboard;
var types = pb.types;

for (var i = 0; i < types.count; i++) {
    var type = types.objectAtIndex(i);
    var typeStr = ObjC.unwrap(type);
    var data = pb.dataForType(type);
    var content = decodeData(data, typeStr);

    console.log("----- " + typeStr + " -----");
    console.log(content);
    console.log();
}
EOF
