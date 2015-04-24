.class Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v0, "logs.db"

    const/4 v1, 0x0

    const/16 v2, 0x45

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 150
    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->isCtsDuosSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    # setter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->CTC_DUOS_SUPPORT:Z
    invoke-static {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$002(Z)Z

    .line 152
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->DSDS_SUPPORT:Z
    invoke-static {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$102(Z)Z

    .line 154
    :cond_0
    return-void
.end method

.method private createKorDurationTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1392
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500 AND new.service_type != 30;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510;UPDATE duration_table SET last_contents_shared = new.duration WHERE new.logtype = 1100;UPDATE duration_table SET last_volte = new.duration WHERE new.logtype = 1000 AND new.service_type != 30;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2 AND new.service_type != 30;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2;UPDATE duration_table SET dial_contents_shared = dial_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 2;UPDATE duration_table SET dial_volte = dial_volte + new.duration WHERE new.logtype = 1000 AND new.type = 2 AND new.service_type != 30;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1 AND new.service_type != 30;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1 AND new.service_type != 30;UPDATE duration_table SET rece_contents_shared = rece_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 1;UPDATE duration_table SET rece_volte = rece_volte + new.duration WHERE new.logtype = 1000 AND new.type = 1 AND new.service_type != 30;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500 AND new.service_type != 30;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510;UPDATE duration_table SET all_contents_shared = all_contents_shared + new.duration WHERE new.logtype = 1100;UPDATE duration_table SET all_volte = all_volte + new.duration WHERE new.logtype = 1000 AND new.service_type != 30; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1474
    return-void
.end method

.method private isCtsDuosSupport()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1477
    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, "productName":Ljava/lang/String;
    const/16 v8, 0x12

    new-array v3, v8, [Ljava/lang/String;

    const-string v8, "m0grandectc"

    aput-object v8, v3, v7

    const-string v8, "ironzn"

    aput-object v8, v3, v6

    const/4 v8, 0x2

    const-string v9, "ironzm"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-string v9, "t03gduoszc"

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "t03gduoszn"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    const-string v9, "t03gctc"

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "m0ctcduos"

    aput-object v9, v3, v8

    const/4 v8, 0x7

    const-string v9, "kyleplus3gctc"

    aput-object v9, v3, v8

    const/16 v8, 0x8

    const-string v9, "aruba3gduosctc"

    aput-object v9, v3, v8

    const/16 v8, 0x9

    const-string v9, "infinite3gduosctc"

    aput-object v9, v3, v8

    const/16 v8, 0xa

    const-string v9, "baffin3gduosctc"

    aput-object v9, v3, v8

    const/16 v8, 0xb

    const-string v9, "delos3gduosctc"

    aput-object v9, v3, v8

    const/16 v8, 0xc

    const-string v9, "crater3gctc"

    aput-object v9, v3, v8

    const/16 v8, 0xd

    const-string v9, "melius3gduosctc"

    aput-object v9, v3, v8

    const/16 v8, 0xe

    const-string v9, "montblanc3gctc"

    aput-object v9, v3, v8

    const/16 v8, 0xf

    const-string v9, "delos3gviactc"

    aput-object v9, v3, v8

    const/16 v8, 0x10

    const-string v9, "h3gduoszn"

    aput-object v9, v3, v8

    const/16 v8, 0x11

    const-string v9, "ms013gctc"

    aput-object v9, v3, v8

    .line 1484
    .local v3, "producsDsDs":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 1485
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1487
    .end local v5    # "str":Ljava/lang/String;
    :goto_1
    return v6

    .line 1484
    .restart local v5    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 1487
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x1

    .line 159
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v0, "CREATE TABLE logs (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,sim_id INTEGER,address TEXT,presentation INTEGER NOT NULL DEFAULT 1,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,voicemail_uri TEXT,is_read INTEGER,countryiso TEXT,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,messageid TEXT,logtype INTEGER NOT NULL,frequent INTEGER,contactid INTEGER NOT NULL,raw_contact_id INTEGER,m_subject TEXT,m_content TEXT,sns_tid TEXT,sns_pkey TEXT,account_name TEXT,account_id TEXT,sns_receiver_count TEXT,sp_type TEXT,e164_number TEXT,cnap_name TEXT,cdnip_number TEXT, service_type INTEGER, country_code TEXT,cityid TEXT,fname TEXT,lname TEXT,bname TEXT,simnum INTEGER,sdn_alpha_id TEXT,real_phone_number TEXT,call_out_duration INTEGER,reject_flag INTEGER,pinyin_name TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER,remind_me_later_set INTEGER,dormant_set INTEGER,vvm_id INTEGER,data_usage TEXT,features TEXT,subscription_component_name TEXT,subscription_id TEXT,transcription TEXT,sub_id INTEGER DEFAULT -1,sec_custom1 TEXT,sec_custom2 TEXT,sec_custom3 TEXT,photoring_uri TEXT,spam_report INTEGER,sec_record TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const-string v0, "CREATE TABLE sns_msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER,receiver_id TEXT,receiver_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->CTC_DUOS_SUPPORT:Z
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$000()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 241
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,last_chaton_voice INTEGER,last_chaton_video INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,dial_chaton_voice INTEGER,dial_chaton_video INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,rece_chaton_voice INTEGER,rece_chaton_video INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,all_chaton_voice INTEGER,all_chaton_video INTEGER,last_voice_sim2 INTEGER,last_video_sim2 INTEGER,dial_voice_sim2 INTEGER,dial_video_sim2 INTEGER,rece_voice_sim2 INTEGER,rece_video_sim2 INTEGER,all_voice_sim2 INTEGER,all_video_sim2 INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    :goto_0
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->DSDS_SUPPORT:Z
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const-string v0, "CREATE TABLE duration_table2 (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,last_chaton_voice INTEGER,last_chaton_video INTEGER,last_contents_shared INTEGER,last_volte INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,dial_chaton_voice INTEGER,dial_chaton_video INTEGER,dial_contents_shared INTEGER,dial_volte INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,rece_chaton_voice INTEGER,rece_chaton_video INTEGER,rece_contents_shared INTEGER,rece_volte INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,all_chaton_voice INTEGER,all_chaton_video INTEGER,all_contents_shared INTEGER,all_volte INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100 AND new.sim_id = 0;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500 AND new.sim_id = 0;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900 AND new.sim_id = 0;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800 AND new.sim_id = 0;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120 AND new.sim_id = 0;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510 AND new.sim_id = 0;UPDATE duration_table SET last_contents_shared = new.duration WHERE new.logtype = 1100 AND new.sim_id = 0;UPDATE duration_table SET last_volte = new.duration WHERE new.logtype = 1000 AND new.sim_id = 0;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_contents_shared = dial_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET dial_volte = dial_volte + new.duration WHERE new.logtype = 1000 AND new.type = 2 AND new.sim_id = 0;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_contents_shared = rece_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET rece_volte = rece_volte + new.duration WHERE new.logtype = 1000 AND new.type = 1 AND new.sim_id = 0;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100 AND new.sim_id = 0;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500 AND new.sim_id = 0;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900 AND new.sim_id = 0;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800 AND new.sim_id = 0;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120 AND new.sim_id = 0;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510 AND new.sim_id = 0;UPDATE duration_table SET all_contents_shared = all_contents_shared + new.duration WHERE new.logtype = 1100 AND new.sim_id = 0;UPDATE duration_table SET all_volte = all_volte + new.duration WHERE new.logtype = 1000 AND new.sim_id = 0; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const-string v0, "INSERT INTO duration_table2 VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    const-string v0, "CREATE TRIGGER duration_update_sim2 INSERT ON logs BEGIN UPDATE duration_table2 SET last_voice = new.duration WHERE new.logtype = 100 AND new.sim_id = 1;UPDATE duration_table2 SET last_video = new.duration WHERE new.logtype = 500 AND new.sim_id = 1;UPDATE duration_table2 SET last_video = new.duration WHERE new.logtype = 900 AND new.sim_id = 1;UPDATE duration_table2 SET last_voip = new.duration WHERE new.logtype = 800 AND new.sim_id = 1;UPDATE duration_table2 SET last_chaton_voice = new.duration WHERE new.logtype = 120 AND new.sim_id = 1;UPDATE duration_table2 SET last_chaton_video = new.duration WHERE new.logtype = 510 AND new.sim_id = 1;UPDATE duration_table2 SET last_contents_shared = new.duration WHERE new.logtype = 1100 AND new.sim_id = 1;UPDATE duration_table2 SET last_volte = new.duration WHERE new.logtype = 1000 AND new.sim_id = 1;UPDATE duration_table2 SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_contents_shared = dial_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET dial_volte = dial_volte + new.duration WHERE new.logtype = 1000 AND new.type = 2 AND new.sim_id = 1;UPDATE duration_table2 SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_contents_shared = rece_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET rece_volte = rece_volte + new.duration WHERE new.logtype = 1000 AND new.type = 1 AND new.sim_id = 1;UPDATE duration_table2 SET all_voice = all_voice + new.duration WHERE new.logtype = 100 AND new.sim_id = 1;UPDATE duration_table2 SET all_video = all_video + new.duration WHERE new.logtype = 500 AND new.sim_id = 1;UPDATE duration_table2 SET all_video = all_video + new.duration WHERE new.logtype = 900 AND new.sim_id = 1;UPDATE duration_table2 SET all_voip = all_voip + new.duration WHERE new.logtype = 800 AND new.sim_id = 1;UPDATE duration_table2 SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120 AND new.sim_id = 1;UPDATE duration_table2 SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510 AND new.sim_id = 1;UPDATE duration_table2 SET all_contents_shared = all_contents_shared + new.duration WHERE new.logtype = 1100 AND new.sim_id = 1;UPDATE duration_table2 SET all_volte = all_volte + new.duration WHERE new.logtype = 1000 AND new.sim_id = 1; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    :goto_1
    const-string v0, "CREATE INDEX sns_map_id ON sns_msg_receiver_map (_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 923
    const-string v0, "CREATE INDEX sns_message_id ON sns_msg_receiver_map (message_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 926
    const-string v0, "CREATE INDEX logs_contact_id ON logs (contactid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 928
    const-string v0, "CREATE INDEX logs_message_id ON logs (messageid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 930
    const-string v0, "CREATE INDEX logs_log_type ON logs (logtype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 931
    return-void

    .line 279
    :cond_0
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,last_chaton_voice INTEGER,last_chaton_video INTEGER,last_contents_shared INTEGER,last_volte INTEGER,last_vowifi INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,dial_chaton_voice INTEGER,dial_chaton_video INTEGER,dial_contents_shared INTEGER,dial_volte INTEGER,dial_vowifi INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,rece_chaton_voice INTEGER,rece_chaton_video INTEGER,rece_contents_shared INTEGER,rece_volte INTEGER,rece_vowifi INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,all_chaton_voice INTEGER,all_chaton_video INTEGER,all_contents_shared INTEGER,all_volte INTEGER,all_vowifi INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_1
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->DSDS_SUPPORT:Z
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    :cond_2
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->CTC_DUOS_SUPPORT:Z
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$000()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 728
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100 AND new.simnum = 1;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500 AND new.simnum = 1;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2 AND new.simnum = 1;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2 AND new.simnum = 1;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1 AND new.simnum = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1 AND new.simnum = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100 AND new.simnum = 1;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500 AND new.simnum = 1;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510;UPDATE duration_table SET last_voice_sim2 = new.duration WHERE new.logtype =  100 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET last_video_sim2 = new.duration WHERE new.logtype = 500 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET dial_voice_sim2 = dial_voice_sim2 + new.duration WHERE new.logtype = 100 AND new.type = 2 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET dial_video_sim2 = dial_video_sim2 + new.duration WHERE new.logtype = 500 AND new.type = 2 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET rece_voice_sim2 = rece_voice_sim2 + new.duration WHERE new.logtype = 100 AND new.type = 1 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET rece_video_sim2 = rece_video_sim2 + new.duration WHERE new.logtype = 500 AND new.type = 1 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET all_voice_sim2 = all_voice_sim2 + new.duration WHERE new.logtype = 100 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET all_video_sim2 = all_video_sim2 + new.duration WHERE new.logtype = 500 AND ( new.simnum = 2 OR new.simnum = 3 ); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 822
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    invoke-direct {p0, p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->createKorDurationTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 826
    :cond_4
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510;UPDATE duration_table SET last_contents_shared = new.duration WHERE new.logtype = 1100;UPDATE duration_table SET last_volte = new.duration WHERE new.logtype = 1000;UPDATE duration_table SET last_vowifi = new.duration WHERE new.logtype = 1150;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2;UPDATE duration_table SET dial_contents_shared = dial_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 2;UPDATE duration_table SET dial_volte = dial_volte + new.duration WHERE new.logtype = 1000 AND new.type = 2;UPDATE duration_table SET dial_vowifi = dial_vowifi + new.duration WHERE new.logtype = 1150 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1;UPDATE duration_table SET rece_contents_shared = rece_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 1;UPDATE duration_table SET rece_volte = rece_volte + new.duration WHERE new.logtype = 1000 AND new.type = 1;UPDATE duration_table SET rece_vowifi = rece_vowifi + new.duration WHERE new.logtype = 1150 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510;UPDATE duration_table SET all_contents_shared = all_contents_shared + new.duration WHERE new.logtype = 1100;UPDATE duration_table SET all_volte = all_volte + new.duration WHERE new.logtype = 1000;UPDATE duration_table SET all_vowifi = all_vowifi + new.duration WHERE new.logtype = 1150; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 936
    const/4 v8, 0x0

    .line 938
    .local v8, "isAddedVOLTE":Z
    const/16 v11, 0x32

    move/from16 v0, p2

    if-ge v0, v11, :cond_0

    .line 939
    const-string v11, "ALTER TABLE logs ADD country_code TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 940
    const-string v11, "ALTER TABLE logs ADD voicemail_uri INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 941
    const-string v11, "ALTER TABLE logs ADD is_read INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 942
    const-string v11, "ALTER TABLE logs ADD countryiso TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    const-string v11, "ALTER TABLE logs ADD geocoded_location TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    const-string v11, "ALTER TABLE logs ADD lookup_uri TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    const-string v11, "ALTER TABLE logs ADD matched_number TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 946
    const-string v11, "ALTER TABLE logs ADD normalized_number TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 947
    const-string v11, "ALTER TABLE logs ADD photo_id INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 948
    const-string v11, "ALTER TABLE logs ADD formatted_number TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 949
    const-string v11, "ALTER TABLE logs ADD cityid TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 950
    const-string v11, "ALTER TABLE logs ADD cnap_name TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 951
    const-string v11, "ALTER TABLE logs ADD cdnip_number TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    const-string v11, "ALTER TABLE logs ADD service_type INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 953
    const-string v11, "ALTER TABLE logs ADD account_id TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 954
    const-string v11, "ALTER TABLE logs ADD _data TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 955
    const-string v11, "ALTER TABLE logs ADD has_content INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 956
    const-string v11, "ALTER TABLE logs ADD mime_type TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 957
    const-string v11, "ALTER TABLE logs ADD source_data INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    const-string v11, "ALTER TABLE logs ADD source_package TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 959
    const-string v11, "ALTER TABLE logs ADD state INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 960
    const/16 p2, 0x32

    .line 963
    :cond_0
    const/16 v11, 0x36

    move/from16 v0, p2

    if-ge v0, v11, :cond_2

    .line 964
    const-string v11, "ALTER TABLE logs ADD pinyin_name TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 965
    const-string v11, "ALTER TABLE logs ADD sim_id INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 966
    const-string v11, "ALTER TABLE logs ADD fname TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 967
    const-string v11, "ALTER TABLE logs ADD lname TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 968
    const-string v11, "ALTER TABLE logs ADD bname TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    const-string v11, "ALTER TABLE logs ADD simnum INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 970
    const-string v11, "ALTER TABLE logs ADD sdn_alpha_id TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 971
    const-string v11, "ALTER TABLE logs ADD real_phone_number TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 972
    const-string v11, "ALTER TABLE logs ADD call_out_duration INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 973
    const-string v11, "ALTER TABLE logs ADD reject_flag INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 974
    const-string v11, "ALTER TABLE logs ADD e164_number TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 975
    const-string v11, "ALTER TABLE logs ADD remind_me_later_set INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 976
    const-string v11, "ALTER TABLE logs ADD dormant_set INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const/16 v11, 0x34

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 981
    const/4 v8, 0x1

    .line 983
    :cond_1
    const/16 p2, 0x36

    .line 986
    :cond_2
    const/16 v11, 0x37

    move/from16 v0, p2

    if-ge v0, v11, :cond_5

    .line 987
    if-nez v8, :cond_3

    .line 988
    const-string v11, "ALTER TABLE duration_table ADD last_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 990
    const-string v11, "ALTER TABLE duration_table ADD dial_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 992
    const-string v11, "ALTER TABLE duration_table ADD rece_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 994
    const-string v11, "ALTER TABLE duration_table ADD all_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 998
    :cond_3
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->DSDS_SUPPORT:Z
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 999
    const-string v11, "ALTER TABLE duration_table2 ADD last_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1001
    const-string v11, "ALTER TABLE duration_table2 ADD dial_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1003
    const-string v11, "ALTER TABLE duration_table2 ADD rece_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1005
    const-string v11, "ALTER TABLE duration_table2 ADD all_volte INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1008
    :cond_4
    const/16 p2, 0x37

    .line 1011
    :cond_5
    const/16 v11, 0x38

    move/from16 v0, p2

    if-ge v0, v11, :cond_6

    .line 1012
    const-string v11, "ALTER TABLE logs ADD vvm_id INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1013
    const/16 p2, 0x38

    .line 1016
    :cond_6
    const/16 v11, 0x39

    move/from16 v0, p2

    if-ge v0, v11, :cond_8

    .line 1017
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1019
    const-string v11, "DROP TRIGGER IF EXISTS duration_update;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1020
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->createKorDurationTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1022
    :cond_7
    const/16 p2, 0x39

    .line 1025
    :cond_8
    const/16 v11, 0x3a

    move/from16 v0, p2

    if-ge v0, v11, :cond_9

    .line 1030
    const/16 p2, 0x3a

    .line 1033
    :cond_9
    const/16 v11, 0x3b

    move/from16 v0, p2

    if-ge v0, v11, :cond_a

    .line 1035
    const-string v11, "ALTER TABLE logs ADD presentation INTEGER NOT NULL DEFAULT 1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    const-string v11, "UPDATE logs SET presentation=2 WHERE number=\'-2\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v11, "UPDATE logs SET presentation=3 WHERE number=\'-1\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    const-string v11, "UPDATE logs SET presentation=4 WHERE number=\'-3\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1047
    const/16 p2, 0x3b

    .line 1050
    :cond_a
    const/16 v11, 0x3c

    move/from16 v0, p2

    if-ge v0, v11, :cond_b

    .line 1051
    const-string v11, "ALTER TABLE logs ADD sec_custom1 TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1052
    const-string v11, "ALTER TABLE logs ADD sec_custom2 TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1053
    const-string v11, "ALTER TABLE logs ADD sec_custom3 TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1054
    const/16 p2, 0x3c

    .line 1057
    :cond_b
    const/16 v11, 0x3d

    move/from16 v0, p2

    if-ge v0, v11, :cond_c

    .line 1058
    const-string v11, "ALTER TABLE logs ADD photoring_uri TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1059
    const/16 p2, 0x3d

    .line 1062
    :cond_c
    const/16 v11, 0x3e

    move/from16 v0, p2

    if-ge v0, v11, :cond_d

    .line 1063
    const-string v11, "ALTER TABLE logs ADD spam_report INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1064
    const/16 p2, 0x3e

    .line 1067
    :cond_d
    const/16 v11, 0x3f

    move/from16 v0, p2

    if-ge v0, v11, :cond_e

    .line 1069
    :try_start_0
    const-string v11, "ALTER TABLE logs ADD vvm_id INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1073
    :goto_0
    const/16 p2, 0x3f

    .line 1076
    :cond_e
    const/16 v11, 0x40

    move/from16 v0, p2

    if-ge v0, v11, :cond_f

    .line 1078
    :try_start_1
    const-string v11, "ALTER TABLE logs ADD sub_id INTEGER DEFAULT -1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1084
    :goto_1
    const-string v11, "ALTER TABLE logs ADD features INTEGER NOT NULL DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1085
    const-string v11, "ALTER TABLE logs ADD data_usage INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1086
    const-string v11, "ALTER TABLE logs ADD transcription TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1089
    const/16 p2, 0x40

    .line 1091
    :cond_f
    const/16 v11, 0x41

    move/from16 v0, p2

    if-ge v0, v11, :cond_10

    .line 1092
    const-string v11, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1096
    const/16 p2, 0x41

    .line 1099
    :cond_10
    const/16 v11, 0x42

    move/from16 v0, p2

    if-ge v0, v11, :cond_11

    .line 1101
    :try_start_2
    const-string v11, "ALTER TABLE duration_table ADD last_vowifi INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1103
    const-string v11, "ALTER TABLE duration_table ADD dial_vowifi INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1105
    const-string v11, "ALTER TABLE duration_table ADD rece_vowifi INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1107
    const-string v11, "ALTER TABLE duration_table ADD all_vowifi INTEGER;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1112
    :goto_2
    const/16 p2, 0x42

    .line 1115
    :cond_11
    const/16 v11, 0x43

    move/from16 v0, p2

    if-ge v0, v11, :cond_12

    .line 1117
    :try_start_3
    const-string v11, "ALTER TABLE logs ADD subscription_component_name TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v11, "ALTER TABLE logs ADD subscription_id TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1123
    :goto_3
    const/16 p2, 0x43

    .line 1132
    :cond_12
    const/16 v11, 0x44

    move/from16 v0, p2

    if-ge v0, v11, :cond_14

    .line 1135
    const-string v11, "SELECT _id, number, countryiso FROM logs  WHERE (normalized_number is null OR normalized_number = \'\')  AND countryiso != \'\' AND countryiso is not null  AND number != \'\' AND number is not null;"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1141
    .local v2, "c":Landroid/database/Cursor;
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-eqz v11, :cond_17

    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1144
    const/4 v11, -0x1

    :try_start_5
    invoke-interface {v2, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1145
    :cond_13
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1146
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1147
    .local v4, "callId":J
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1148
    .local v10, "unNormalizedNumber":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, "countryIso":Ljava/lang/String;
    invoke-static {v10, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1154
    .local v9, "normalizedNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 1155
    const-string v11, "UPDATE logs set normalized_number = ? where _id = ?;"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1165
    .end local v3    # "countryIso":Ljava/lang/String;
    .end local v4    # "callId":J
    .end local v9    # "normalizedNumber":Ljava/lang/String;
    .end local v10    # "unNormalizedNumber":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1168
    :catch_0
    move-exception v7

    .line 1169
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1173
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_5
    const/16 p2, 0x44

    .line 1176
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_14
    const/16 v11, 0x45

    move/from16 v0, p2

    if-ge v0, v11, :cond_15

    .line 1177
    const-string v11, "ALTER TABLE logs ADD sec_record TEXT;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1178
    const/16 p2, 0x45

    .line 1181
    :cond_15
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_18

    .line 1182
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error upgrading the database to version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1070
    :catch_1
    move-exception v6

    .line 1071
    .local v6, "e":Landroid/database/SQLException;
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Ver. Upgrading database alert tables not necessary, S"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1079
    .end local v6    # "e":Landroid/database/SQLException;
    :catch_2
    move-exception v6

    .line 1080
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string v11, "UPDATE logs SET subscription_component_name=\'com.android.phone/com.android.services.telephony.TelephonyConnectionService\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1082
    const-string v11, "UPDATE logs SET subscription_id=sub_id;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1109
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v6

    .line 1110
    .local v6, "e":Landroid/database/SQLException;
    # getter for: Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ver."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1120
    .end local v6    # "e":Landroid/database/SQLException;
    :catch_4
    move-exception v7

    .line 1121
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1163
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v2    # "c":Landroid/database/Cursor;
    :cond_16
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1165
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1171
    :cond_17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_1
    move-exception v11

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v11

    .line 1185
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_18
    return-void
.end method
