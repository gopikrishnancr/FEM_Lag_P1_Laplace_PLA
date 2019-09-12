function m_stima = asmbl_mat_gen_tut(elem_st,mm,l,n_elem)

% assembly matrix generation 

%m_stima = 


for j = 1:n_elem
    
    %vert = elem_st(j).vcs; 
    
    % L = 

m_stima(1+(j-1)*9:j*9,1) =  elem_st(j).area*[(l + 6*(L(1,1)^2 + L(1,2)^2)*mm)/6; ...
          (l + 12*(L(1,1)*L(2,1) + L(1,2)*L(2,2))*mm)/12; (l + 12*(L(1,1)*L(3,1) + L(1,2)*L(3,2))*mm)/12;
(l + 12*(L(1,1)*L(2,1) + L(1,2)*L(2,2))*mm)/12; (l + 6*(L(2,1)^2 + L(2,2)^2)*mm)/6;....
          (l + 12*(L(2,1)*L(3,1) + L(2,2)*L(3,2))*mm)/12;
(l + 12*(L(1,1)*L(3,1) + L(1,2)*L(3,2))*mm)/12; (l + 12*(L(2,1)*L(3,1) + L(2,2)*L(3,2))*mm)/12;....
          (l + 6*(L(3,1)^2 + L(3,2)^2)*mm)/6];
end
  



  
 