insheet using "/Users/albertocottica/Documents/Edgeryders the company/SSNA_data_export/all_projects/ocreg.csv"
* generate dummy variables representing users 
tabulate source_username, generate(user)
local users user1-user272
local regs char_count reply_count reads incoming_link_count quote_count posts_in_topic `users'
* run the regression
reg annotations `regs'
* plot residuals
rvfplot, yline(0)
