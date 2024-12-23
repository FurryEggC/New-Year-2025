var arr = argument0;
var len = array_length_1d(arr);
var rnd = array_create(len);
for(var i = 0; i < len; ++i)
{
    rnd[i] = arr[i];
}

for(var i = 0; i < len; ++i)
{
    var index = irandom_range(i,len - 1);
    var tmp = rnd[i];
    rnd[i] = rnd[index];
    rnd[index] = tmp; 
}

return rnd;
