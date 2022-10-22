
%: template/% global_config.yml
	jinja2 $^ global_config.yml -o $@
