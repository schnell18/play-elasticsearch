# include_type_name is required to avoid error message as follows
#
#     Types cannot be provided in put mapping requests,
#     unless the include_type_name parameter is set to true
#
# curl 'localhost:9200/tweet/_mappings/employee?pretty&include_type_name'
curl 'localhost:9200/tweet/_mappings?pretty'
