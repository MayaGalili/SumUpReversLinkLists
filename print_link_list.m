function [] = print_link_list(head_node)
node = head_node;
fprintf('%d', node.Data);
while ~isempty(node.Next)
    node = node.Next;
    fprintf(' > %d', node.Data);
end
fprintf('\n');
end