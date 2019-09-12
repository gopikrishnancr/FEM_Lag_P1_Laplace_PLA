function m_stima = asmbl_mat_gen(elem_st,mm,l,n_elem)

% assembly matrix generation 

m_stima = zeros(9*n_elem,1);


for j = 1:n_elem
    
    vert = elem_st(j).vcs; 
    
    L =  [vert([2,3,1],2) - vert([3 1 2],2)...
          vert([3,1,2],1) - vert([2,3,1],1)]/(2*elem_st(j).area);
  

m_stima(1+(j-1)*9:j*9,1) =  elem_st(j).area*[(l + 6*(L(1,1)^2 + L(1,2)^2)*mm)/6; ...
          (l + 12*(L(1,1)*L(2,1) + L(1,2)*L(2,2))*mm)/12; (l + 12*(L(1,1)*L(3,1) + L(1,2)*L(3,2))*mm)/12;
(l + 12*(L(1,1)*L(2,1) + L(1,2)*L(2,2))*mm)/12; (l + 6*(L(2,1)^2 + L(2,2)^2)*mm)/6;....
          (l + 12*(L(2,1)*L(3,1) + L(2,2)*L(3,2))*mm)/12;
(l + 12*(L(1,1)*L(3,1) + L(1,2)*L(3,2))*mm)/12; (l + 12*(L(2,1)*L(3,1) + L(2,2)*L(3,2))*mm)/12;....
          (l + 6*(L(3,1)^2 + L(3,2)^2)*mm)/6];
end
  



  
 