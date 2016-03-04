<sql:setDataSource var="language" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://127.0.0.1:3306/sreemath_educational_trust_dev" user="root" password=""/>
<sql:setDataSource var="category" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://127.0.0.1:3306/sreemath_educational_trust_dev" user="root" password=""/>
<sql:query dataSource="${language}" var="language">  
    SELECT * from Language;
</sql:query>
<sql:query dataSource="${category}" var="category">  
    SELECT * from Category;
</sql:query>