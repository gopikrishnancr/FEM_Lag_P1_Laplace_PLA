function elem_st = generate_elem_st(Elem,Coord)

elem_st = repmat(struct('nds',[],'vcs',[],'area',[]),nd,1);
 

for i = 1:size(Elem,1)
    nodes = Elem(i,1:3);                 
    elem_st(i).nds = nodes;                          % node numbers of vertices
    vert = Coord(Elem(i,1:3),:); 
    elem_st(i).vcs   = vert;                         % element node vertices
    elem_st(i).area  = 1/2*det([ones(1,3);vert']);   % element areaa
end



