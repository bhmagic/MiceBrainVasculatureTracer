function nhood = pk_get_nh_sparse(img,i,sizeImg)

width = sizeImg(1);
height = sizeImg(2);
depth = sizeImg(3);

[x,y,z]=ind2sub([width height depth],i);

nhood = false(length(i),27);


for xx=1:3
    for yy=1:3
        for zz=1:3
            w=sub2ind([3 3 3],xx,yy,zz);
            idx = sub2ind([width height depth],x+xx-2,y+yy-2,z+zz-2);
            nhood(:,w)=img(idx);
        end
    end
end
end
