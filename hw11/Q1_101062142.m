function output = Q1_101062142(url)
	html = urlread(url);
	html = regexprep(html, '<!--[\S\s]*?-->', '');
	email_pattern = '([\w_]*\.)*[\w_]+@([\w_]*\.)*[\w_]*';
	[st, ed] = regexp(html, email_pattern);
	email_set = {};
	for i=1:length(st)
		email = html(st(i):ed(i));
		email_set{i} = email;
		email;
	end
	output = unique(email_set);
end
