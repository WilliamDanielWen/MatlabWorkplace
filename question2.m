

function [pq]=priorityPrepare()
    s=struct(key,cost);
    pq=[;s];
end


function [pq]=priorityPush(pq,key,cost)
    s = struct(key,cost);
    cat(s,pq);
end


function [pq,key,cost]=priorityMinPop(pq)
    if isempty(A)
       return
    end
    %init minimum
    cost = pq(0).cost;
    len =length(pq);
    for n= (1:len)
        if pq(n).cost<cost
            %update minimum
            cost = pq(n).cost;
            
            %delete this element
            pq = cat(pq(1:n-1),pq(n+1,len));
        end
    end    
end