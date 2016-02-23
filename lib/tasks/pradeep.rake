# namespace :userdetails do
#     desc "seeds userdetails data"
    
#     task :seed => :environment do
#          for i in 0..100
#              userdetails.create(name:"name#{i}")
#              puts "creating"
#           end
#      end

#     desc "unseeds userdetails data"
    
#     task :unseed => :environment do
#       userdetails.destroy_all
#     end
#     desc "this task seeds and unseeds userdetails data"
#     task :all => [:seed, :unseed]
    

#       task :import => :environment do
#         book = Spreadsheet.open "/path/to/an/excel-file.xls"
#         sheet1 = book.worksheet 0
#    sheet1.each_with_index do |row,k|
#   unless k =0
#     @user = User.new
#     @userdetails.first_name = row[0]
#     @userdetails.last_name = row[0]
#     @userdetails.last_name = row[1]
#     @userdetails.age = row[2]
#     @userdetails.save
#    puts "record:#{k} first_name:#{@user.first_namr} last_name:#{@user.last_name}”
#   end
# end
  
#     #def pick(model_class)
#      # model_class.find(:first, :order => "RAND("")
#     #endSS
#   end


 namespace :user_details do
    desc "seeds user_details data"
        task :seed => :environment do
         for i in 0..100
             UserDetail.create(first_name:"name#{i}")
            puts "creating #{i} record"
          end
        puts "Total:#{Userdetail.count}"
     end
 end






