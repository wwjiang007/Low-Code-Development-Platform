
#
 Volume 1 Getting Started Table of Contents Introducing Rintagi ................................................................ 1 Creating an Application ...................................................... 13 Customizing an Application ............................................... 14 Adding a New Screen ................................................................. 14 
##
 Modifying Page Layout ............................................................... 17 Modifying Style Sheets ............................................................... 20 Modifying User Preference ........................................................ 20 Multilingual Ready ...................................................................... 22 Integrating Other Applications ................................................. 24 Adding a New Report ................................................................. 26 
#
 Configuring Navigation Controls ....................................... 28 Building and Running Application ..................................... 30 Document Control Audit ..................................................... 33 Data Dictionary ........................................................................... 33 Business Rule Listing .................................................................. 34 
##
 Program Listing ........................................................................... 35 Message Listing .......................................................................... 37 
#
 Usage and Version Tracking ............................................... 38 Usage Report ............................................................................... 38 Release Tracking ......................................................................... 40 Security & Policy ................................................................... 42 Access Policy ............................................................................... 42 
##
 Password Policy ........................................................................... 43 Login Audit .................................................................................. 44 Permission Listing ...................................................................... 44 User Listing ................................................................................. 45 
#
 Chapter 1 Introducing Rintagi 
##
 This and subsequent user-guides are intended to provide usage and technical details to a wide range of audiences. Because Rintagi is intended to bring business users and professional developers together to quickly deliver enterprise grade applications, some information here may be too technical or too business oriented. If you are a business manager and you find some details overwhelming, you may ignore those and focus on the major functionality of Rintagi. On the contrary, some professional developers may need more details and they should contact Robocoder Corporation for more information. To successfully compete in this global economy, every business tries to be unique to differentiate their products and services. Yet the service provided is often hindered by me-too technologies. Custom software is often cited as expansive and time consuming to build and many are either not built to last or failed to deliver. The solution is Robocoder Corporation’s anti-aging .NET code generator platform – Rintagi, which embraces late changes. Robocoder has embedded in Rintagi all its knowledge and experience in delivering custom business process management (BPM) software applications to large enterprises so that it can generate the desired application with performance and standards using agile methodology. The code produced is consistent and can replicate the same look and feel throughout the application’s user interface automatically. Complex and interactive web pages can be created with database-connected components including forms, reports, filters, and navigation features. Rintagi in the cloud is designed to be self-served so that custom BPM enterprise applications with complex functionalities can be built in hours or days, instead of months or years. Decreased time-to-market, ease of modification, and low maintenance are inherent benefits. Standardization, process controls and continuity are easily achieved using Rintagi. Security and superior enterprise architecture are inherited when generating desired applications. Bridging the gap between business and technical personnel may be its greatest advantage. Using intuitive interfaces business people may complete a significant portion of the applications design as a blueprint for Rintagi to generate enterprise-ready code. Screen painting, business rules description can be done by business people while technicians focus on data modeling, business rules implementation and systems integrations to create seamless and structured cloud-based or on-premises applications. Rintagi’s ability to self-generate allows customization for itself and the applications it creates. Your corporate standards and requirements are met easily and efficiently. This customizable code generator has successfully developed and is currently maintaining mission-critical enterprise applications for many reputable organizations in the financial and energy sectors. Rintagi uniquely generates itself to keep pace with users’ needs and technological advancement. In fact, Rintagi has ‘grown organically’ so that it can adapt easily to any changing environment. And upgrading Rintagi allows it to regenerate all other applications to latest interfaces and technology, and to some extent, new architecture or languages. In theory, your generated software applications should never be obsolete again. Rintagi rapidly generates standard Microsoft .NET web applications source code that: 1. Uses existing or brand new application-specific data models. 2. Delivers bug-free source code; everything required for enterprise-ready functional applications that link seamlessly. 3. Provides a complete and well-organized source code platform that is easy to modify. 4. Promotes application regenerations by enabling modifications and customizations. 5. Allows Rintagi to be enhanced as easily as the applications it generates. Database Applications Customization Code generation is ideal for any organization looking for consistencies in business process management (BPM) applications. For organizations adopting standard and easy to use user interactions, Rintagi can deliver quality high performance database applications fast and inexpensively with low maintenance. Although additional steps must be taken to provide unique features, Rintagi can be ‘taught’ to generate custom modifications. If a new feature is required on an application the following steps can be followed: Custom Modifications to Rintagi Possible 1. Hand code the new feature on the generated application and perform all tests to verify that it meets requirements. 2. Generalize the design of this new feature so that simple meta-data information can be captured to reproduce the same feature onto all other applications. 3. Hand code the generalized new feature into Rintagi’s generator and the user interface to capture the required meta-data, generate this feature to replace the hand code in step 1, make sure codes generated are exactly the same; only then perform unit and integration testing again. 4. Where applicable, use Rintagi to generate the new feature to Rintagi itself and perform unit and integration testing again. Although Rintagi can be modified as easily as the applications it generates, you can see from the above that steps 2 and 3 are extra steps to be taken in order for Rintagi to ‘learn’ and apply new features to self and other applications. Although these extra steps require more time, if the same feature is needed in many other areas of the same or different applications, it becomes very economical for Rintagi to ‘learn’ and do the repetitive work. This only applies to features not included in the original Rintagi. Rintagi allows software developers to intuitively translate user requirements into a set of “blueprints” and uses them to generate the desired application. In fact, Rintagi itself is generated by a set of “blueprints” captured over time as depicted in the following diagram. Unlike other code-generation technology, this self- generating ability has enabled Rintagi to be enhanced just as easily as the applications it generates. As a matter of fact Rintagi has organically ‘grow’ itself over the years. 
#
 Rintagi as a Platform 
##
 Rintagi does not migrate or transform legacy systems. In order for a Rintagi generated application to replicate the functionality of a legacy system there must be some degree of re-development or re-factoring. The overall legacy system must be well understood and it must exhibit some degree of variability before it can be interpreted into an effective blueprint. Although existing legacy code can be “templatized”, the Rintagi philosophy discourages taking inefficient or “bad” legacy code to create a generator that can recreate the same legacy code because no efficiency will be gained. Consideration should be given as to why the legacy system needs to be migrated in the first place. Typically it means the system needs to be evolved, including its internal structure. Therefore the effort invested in making it “model-driven” is probably well spent, since it helps to achieve the goals of improving the structure of the system. Once converted Rintagi can maintain the system’s fitness and avoid the need for migration in the future. Agile development methodology, familiar to developers, is the basis for Rintagi. It was designed by Scrum master. It generates much of the basic code so that more functionality can be added at a faster rate, embracing late-change-no-penalty. It produces standard N-tiered web applications on a service-oriented architecture, including the user interface pages and the code behind, web-services, SQL queries, stored procedures and transaction management code. Rintagi produces a custom working application, not just a prototype or individual components. The application can be built in just a few hours. Modifications and enhancements to the user interface are instantly incorporated with each re-generation of the code which occurs dynamically with just-in-time compilation. In another word, you see what you have changed immediately with instant feedback, all the time. Rintagi builds native Microsoft .NET applications like these with the standard N-tier architecture preferred by most corporate developers. 
#
 Typical Rintagi Screen Interface 
##
 The generated code includes complex features like multi-table joins, multi-table access and distributed update on multi- servers, user interface functionality like search and navigation, and security. Rintagi generates native Microsoft .NET code, with ASPX pages, ASCX controls, SQL stored procedures and C# code. Developers enjoy unrestricted access to 100% of the generated code, and modifications to the generated code via metadata changes are automatically preserved when an application is re-generated. You may run your Rintagi generated applications anytime, anywhere without concerning hardware, servers, network, security, etc. Application generated by Rintagi is automatically multi-tenant. Many companies and their data can coexist on the same database. Rintagi builds complete N-tier applications on a Service- Oriented Architecture. Enterprise-ready web-based service-oriented N-Tier applications Self-generated Rintagi creates an enterprise-ready, web-based N- Tier application on a service-oriented architecture. Rintagi generates this same N-Tier application for its enterprise applications including: Web Pages Presentation Layer Business Rules Layer Data Access Layer Database Layer Framework Web Pages: Based on user-specific design, Rintagi generates applications user interface, including the web pages, dialog pages, menus, and search and navigation components. Rintagi generates complex display components including tab folders with data from multiple database tables and from multiple servers. Presentation Layer: Rintagi generates the code behind each of the ASPX pages and the user controls as modules from those pages. Rintagi can generate a data grid comprised of data joined from multiple database tables and servers. A single update can simultaneously update multiple tables on different servers. Reporting criteria is available to all reports, providing additional reporting flexibility to end-users. Last selected criteria are also cached for individual users. Users may designate each set of criteria with a name for the ease of running reports with the same criteria at a later time or at intervals. Rintagi generates all of the user interface code necessary to support the application’s web-based user interface, including filtering criteria and data validation logic for built-in data types. User-defined constraint rules can be set up to perform custom validation. All web pages and presentation layers run on the client tier can be on a separate server from other tiers. Business Layer: Adding custom application logic to applications generated by end-users is easy. Rintagi builds applications that are specifically designed to support all types of business rules: Constraints, Computation, Business Rule Types  Constraints  Computation  Inference  Action Enablers Inference and Action Enablers. These rules can be applied  instantly on the web page as client rules in JavaScript,  upon post-back as web rules in C#, and  before or after data manipulation as server rules as stored procedures. Applications can be regenerated repeatedly without re-integrating these code extensions. In fact, this is why Rintagi can deliver applications with the highest performance because the data are manipulated where it is currently located, resulting in highest throughput and minimum network traffic. Data Access Layer: As part of data security, all data manipulation must to go through this layer and can only be called via a business façade layer. Only the business façade layer is exposed. The data access codes on this layer encapsulate the characteristics of the databases so that the calling functions can focus on business logic issues. These business façade and data access layers are wrapped inside web-services on a separate server and are available to both Rintagi generated client tiers or other user interfaces from other systems. Database Layer: SQL stored procedures and queries needed for storing, retrieving, and filtering data are contained in the database. Rintagi will even generate complex queries including multi-table joins with one-to-many and many-to-many relationships. Most of the generated SQL is packaged as a set of database stored procedures in order to provide the best execution and performance with the fewest round trips to the database. Rintagi automatically constructs the SQL queries required for each screen, import wizard and report. Rintagi also generates the database access logic that executes the SQL queries, including all data storage management. Although this database layer can be a separate server like the previous two layers, all three tiers can run on a single server with superb performances because of the optimized codes which become well-tuned over time. Framework: Rintagi generates web-based applications that run on the Microsoft .NET framework, making applications easier to integrate, deploy, and manage. The industry-standard codes generated can be modified easily using Microsoft Visual Studio. Development time is dramatically reduced leaving the developers to focus on customization and integration. Reports can be generated to run on Crystal Report engine or SQL Reporting Service. 
#
 Bridging the Business/Technical Chasm 
##
 Using Rintagi, business users may create simple applications using the interfaces provided, much like running any business application. They can then turn to technical staff to complete the applications using Rintagi-provided interfaces to add sophisticated business rules, advanced user interactions, etc. Rintagi can create most advanced database applications. If you encounter features that Rintagi cannot address, we recommend either modification of Rintagi and notifying us so that we can incorporate your modifications into the next version of Rintagi; or you can make the change directly onto your generated code and mark the changes so that they can be reapplied after the next upgrade from Rintagi. Unlike other enterprise systems, the older Rintagi gets, the ‘wiser’ it becomes and the more functional it and its generated applications will be. 
#
 Chapter 2 Creating an Application 
##
 Application creation is part of the automated deployment process. The following executable installation process will create a new application for development of production. It can also be used to upgrade existing application or to create a new Rintagi. 
#
 Rintagi Installer Chapter 3 Customizing an Application 
##
 Web pages generated by Rintagi can be modified in many ways: 1. 1. Screen, report or wizard 2. Menu style and structure 3. User preference 4. Style sheets The ASPX web pages generated by Rintagi are CSS 3.0 and HTML5 compliant. All pages generated are browsers independent. They have been well tested on many versions of IE, Firefox and Netscape. Using Web Rule, the following can be applied in addition to modifying web page layout by the above: 1. Add any number of database- bounded components. 2. Change the look and feel or style of the generated components. 3. Create component and page templates that can be applied to other pages. 4. Integrate with other applications. Adding a New Screen Log into the application as a developer, then Select “Administration” system left of the login button. Then select “Screen Definition” as follows: 
#
 Screen Definition 
##
 Select the desired screen types: 1. Tab-Folder Only: single record update 2. Tab-Folder with Grid: single record update for tab-folder tables and multiple records update for grid tables 3. Data-Grid Only: multiple records for grid tables 
#
 Screen Layout 
##
 The “Program Name” provided would be used as a prefix to all of the programs generated for this screen. A list of all the programs generated for the above screen can be obtained by Systems -> Program Listing and selecting the appropriate human language. 
#
 Program Listing Report 
##
 In case you wants to know, the programs generated are distributed to three separate tiers identified in Web.config: 1. Client Tier: key="ClientTierPath" 2. Rule Tier: key="RuleTierPath" 3. Data Tier: key="DataTierPath" Modifying Page Layout Page layout can be modified with Client Tier -> Screen -> Screen Columns Maintenance. Screen groups determine the layout of columns and their labels, width and height. The Display Mode designates the appropriate controls for presentation of this column, etc. 
#
 Screen Column Design 
##
 Each column can further be designated as visible/invisible, read- only/editable and exportable/non-exportable for each individual user or groups. 
#
 Behavior Personalization 
##
 Modifying Style Sheets Rintagi uses Cascading Style Sheet (CSS) files to specify the styles used for the web pages, panels and controls created for the application, providing a standard look-and-feel to the application. The style sheet files are located in the css directory. _base.css has all the underlying css base classes. _screen.css has the overriding css classes for screen related interfaces. _print.css is for reporting and printing use. All these can be overridden by user preference css described below, if any. Modifying User Preference User Preference should be used to change the functionality or look-and-feel of overall design theme. The colors, fonts, positioning, and other stylistic elements specified by the above style sheet can be overridden by the style sheet text box in this User Preference area. Splash image, menu options, shortcuts settings, quick launch, etc. can also be specified. Each user-defined preference can be assigned to individual users, user groups or the entire system. A particular user may hide the company and/or system selection. 
#
 User Preference Configuration 
##
 Multilingual Ready Rintagi generated enterprise applications are multilingual. Once the application is built in English then labels, tool tips, messages, etc. in many other human languages can be automatically generated with Rintagi. Human translators may inspect and change to preferred phrases and wordings without involving technical staff. For those languages not provided automatically, translation into any Unicode supported language can be accomplished via Rintagi’s user-friendly interface. Each human language can be translated within minutes by the press of a button. It utilizes the Google automatic translation engine. The cost is minimal. Although not all translations are done properly, it is improving and correcting them using Rintagi interface is much faster and easier than translating from scratch. 
#
 Translator Screen 
##
 If the above translation is not satisfactory, built-in screens provide editing capability for each individual translation. 
#
 Translation Editing 
##
 Each user is designated one or more user-defined user groups and a specific human language with a country-specific locale. Although each user may belong to many user groups, only one human language can be designated at a time. 
#
 User Management 
##
 Integrating Other Applications Applications generated by Rintagi can be easily integrated with other existing applications and web pages. Rintagi-generated applications can operate as separate, independent applications because of the stateless nature of web programming. One application may call into another via the URL mechanism inherent in all web applications. For example, Rintagi-generated applications can call any web page from within its menu. 
#
 Menu Access Screen 
##
 Other applications can call any Rintagi-generated programs via a standard html anchor. For example: <a href=”http://www.abc.com/testing.aspx”>testing</a>. Integration can also be done via web rule, as well, where other web pages and web services of other applications can be called and the results integrated into Rintagi-generated applications. 
#
 Web Rule 
##
 Server-side integration can be done via the database level with stored procedures, etc. Adding a New Report Rintagi enables business users to create simple list, tabular reports, charts, and dashboard gauges in minutes. Subsequently, if the business users determine that more sophisticated reports are required these simple reports can be forwarded to technical staff for further modification. The Report Generator can build simple reports as follows: 
#
 Report Generator 
##
 Selecting some of the followings can attain further sophistication: 
#
 Chapter 4 Configuring Navigation Controls 
##
 Rintagi has a convenient built-in screen for configuring navigation menu panels. 
#
 Navigation Menu Screen 
##
 Screen buttons can also be configured via a built-in screen. Not only display names and tool tips can be overridden by culture- specific and user-specified phrases but also they can be replaced with favorite or branded images. 
#
 Button Modification Screen Chapter 5 Building and Running Application 
##
 Application generation in Rintagi is easy. All screen, report, and wizard programs are automatically regenerated upon changes. All changes are dynamic seamless to the developers. When necessary, using the interface below, they can also be generated explicitly one by one or all at once, or in batches, allowing iterative modification of the application and quick regeneration to see changes. 
#
 Screen Auto Generation 
##
 During the application generation process, a variety of programs are generated for the application, including: 1. Web pages consisting of ASPX pages with ASCX controls and their code-behind classes. 2. Web rules embedded in the ascx code behind. Client rules are dynamic. 3. A set of database stored procedures composed of standard SQL queries for a designated database vendor. The principle of ACID is adhered. Transactions only commit if all business rules have been passed without error. 4. Server rules as explicit stored procedures. Although compilation is automatic and seamless to Rintagi users, you may use Visual Studio to compile and perform low level diagnostic. Rintagi generated applications can be tested on the development platform or be published to a test server for user acceptance testing. Deployment to production server is also just a press of a button in the cloud. On-premises deployment, if so desired, is also as simple as generating one installer, and running it on the designated servers. The installer is one simple .exe file embedding all of the changes required for application to the target servers and databases. Clicking on a URL will run Rintagi-generated applications like any other web-based application. Each application developed will have its own separate URL to be distributed to those end-users who need access. 
#
 Prepare On-premises Deployment Package Chapter 6 Document Control Audit 
##
 Rintagi automatically provides and updates four kinds of documentations that are usually difficult to keep up-to-date when applications are being enhanced frequently. Data Dictionary Business Rules Listing Data Dictionary Program Listing Message Listing Each application generated by Rintagi keeps its own data model as meta-data or a blueprint. If a description has not been entered for each data column, the tool tips are copied to describe the data columns as they are entered. These descriptions can be modified from time to time to reflect the current definitions. As the application grows and changes, each additional data table or column is tracked and updated to the data dictionary. 
#
 Data Dictionary Screen 
##
 Business Rule Listing Business rules will be covered in later volumes of advanced topics. For sophisticated developers, many different kinds and different types of business rules may apply to Rintagi-generated applications. In the traditional programming world, these business rules are usually embedded or hidden in the programs and are very difficult to extract. Thanks to the blueprint structure used by Rintagi, not only can business rules be extracted easily for modification, they can be listed anytime for reference and communication. 
#
 Business Rules Listing Report 
##
 Program Listing In the past the tracking of computer programs was an arduous process. Not so with Rintagi as programs are being generated and maintained constantly by itself. Custom programs can be added but they will not be listed here. 
#
 Program Listing Report 
##
 Message Listing By selecting a desired human language, an up-to-date listing of all of the screen online help messages, labels, tool tips and error messages are immediately available. 
#
 Message Listing Report Chapter 7 Usage and Version Tracking 
##
 Because of the robust design of Rintagi, daily, weekly and monthly releases are common. Rintagi automatically tracks the usage and the contents of each release: 1. Usage Report 2. Release Tracking Usage Report A comprehensive list of criteria is available to the administrator for tracking the usage of the applications. This includes Rintagi itself, as it is self-generated. 
#
 Usage Report Criteria Usage Report 
##
 Release Tracking Rintagi automatically creates the necessary change script to be executed on the next release each time the data model is modified. No hand-coding is necessary although you may add more to them at your own will. 
#
 Release Tracking 
##
 A report is also available as readme for tracking manually prepared release notes: 
#
 Release Readme File Chapter 8 Security & Policy 
##
 In the old days when enterprise applications are on-premises, physical access was on the top of the list of major concerns when it comes to computer security. Then Virtual Private Network becomes a security concern, when the private network is extended across a public network, such as the Internet. Today many of our clients are running their enterprise applications from the cloud. Literally anyone knowing the URL can access their applications from any browsers on any computer in the world. As part of the access control, Rintagi addresses that by IP Allow List, customized password complexity requirements, CAPTCHA, etc. Once authenticated, authority is assigned based on role, organization, responsibility and business rules. These security controls have enable generated applications that are not only multi-tenant, but also connecting customers and vendors to share valuable data online and real time for effective and efficient communications. In addition, with the exception of authorized developers, all data entry screens are protected from script injection attack. Access Policy The access policy includes the following aspects of access management: • User authentication controlled solely by user account and password combination; • User may have multiple login sessions simultaneously; • Multiple user accounts can share the same email address; Password Policy The password policy includes the following aspects of password management: • All passwords are stored via secured salted one-way hash; • Users are prohibited from login after five (5) consecutive unsuccessful login attempts, regardless if the login name is found; • User may change password at any time; Administrator may set it up to be changed every n days via password expiration, default is 180 days; • Administrator may inactive a user login at any time; • User cannot reuse existing password as default; Administrator may set it up so that User cannot reuse n existing passwords used in the past; • Force new user to change password upon first login; • Enforce custom password complexity policy (eg. minimum length, mix of case and alphanumeric, etc.); Typical minimum length (8 characters at least one alpha, one numeric and a capital letter); this can be configured easily in Web.config; • Email user on unsafe IP address upon login; user may respond positively to keep this IP on the safe list or change password right away. Login Audit Successful and unsuccessful logins are tracked and can be reported as follow. 
#
 Login Audit Report 
##
 Permission Listing By selecting a desired human language, an up-to-date listing of all authorization permitted to access or denied from access are displayed. It covers four sections: Menu, Report, Screen, and Import Wizard. Checking Active-User-Only will exclude user groups or other entities that have no users assigned to them. Details of authorizations and permission management can be found in the User Guide Volume 6 – Rights Management. 
#
 Permission Listing Report 
##
 User Listing This is a list of all the users, their general authorization levels and who they may be impersonating. Details of authorizations and permission management can be found in the User Guide Volume 6 – Rights Management. 
#
 User Listing Report 