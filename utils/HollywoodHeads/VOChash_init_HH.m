function hash = VOChash_init_HH(strs)

hsize=4999;
hash.key=cell(hsize,1);
hash.val=cell(hsize,1);

for i=1:numel(strs)
    s=strs{i};
    h=mod(str2double(s([5:7 9:end])),hsize)+1;
    j=numel(hash.key{h})+1;
    hash.key{h}{j}=strs{i};
    hash.val{h}(j)=i;
end

