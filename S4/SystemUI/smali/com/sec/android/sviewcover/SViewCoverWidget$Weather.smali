.class public Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weather"
.end annotation


# static fields
.field public static final ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = null

.field private static final ACTION_CWEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

.field private static final ACTION_KWEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

.field private static ACTION_SEC_AUTO_REFRESH:Ljava/lang/String; = null

.field private static ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = null

.field private static ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = null

.field private static final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

.field public static final CMA_SETTING_URI:Landroid/net/Uri;

.field public static final CMA_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "accuweather"

.field private static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field private static final DAEMON_JPWEATHER:Ljava/lang/String; = "weathernewsjp"

.field private static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field public static final K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final K_SETTING_URI:Landroid/net/Uri;

.field public static final WEATHER_NEWS_SETTING_URI:Landroid/net/Uri;

.field public static final WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

.field private static mCPName:Ljava/lang/String;


# instance fields
.field private final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_ID_SEC:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CITY_NAME_SEC:Ljava/lang/String;

.field private final KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_HIGH_TEMP_SEC:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_ICON_NUM_CHN:Ljava/lang/String;

.field private final KEY_ICON_NUM_SEC:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_LOW_TEMP_SEC:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_TEMP_SCALE_SEC:Ljava/lang/String;

.field private final KEY_TIMEZONE:Ljava/lang/String;

.field private final KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

.field private final KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

.field private final KEY_WEATHER_REFRESH_TIME_SEC:Ljava/lang/String;

.field private final KEY_WEATHER_STRING_SEC:Ljava/lang/String;

.field private final KEY_WEATHER_TEXT:Ljava/lang/String;

.field public SETTING_URI:Landroid/net/Uri;

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field public WEATHERINFO_URI:Landroid/net/Uri;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContentObserver:Landroid/database/ContentObserver;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDivider:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWeather:Z

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherContainerHighLow:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherStatus:Landroid/widget/TextView;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherTempHigh:Landroid/widget/TextView;

.field private mWeatherTempLow:Landroid/widget/TextView;

.field private mWeatherUnit:Landroid/widget/ImageView;

.field private mWeatherUnitHigh:Landroid/widget/ImageView;

.field private mWeatherUnitLow:Landroid/widget/ImageView;

.field private mWeatherWidget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1462
    const-string v0, "accuweather"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 1473
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 1501
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1503
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 1505
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1507
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_SETTING_URI:Landroid/net/Uri;

    .line 1509
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1511
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_SETTING_URI:Landroid/net/Uri;

    .line 1513
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

    .line 1515
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1531
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1428
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    .line 1430
    iput v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 1432
    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 1435
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 1437
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 1439
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 1441
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 1443
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 1445
    const-string v0, "aw_daemon_service_key_weather_text"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_TEXT:Ljava/lang/String;

    .line 1447
    const-string v0, "aw_daemon_service_key_high_temp"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_HIGH_TEMP:Ljava/lang/String;

    .line 1449
    const-string v0, "aw_daemon_service_key_low_temp"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_LOW_TEMP:Ljava/lang/String;

    .line 1453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntent:Landroid/content/Intent;

    .line 1482
    const-string v0, "Location=\"%s\""

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 1484
    const-string v0, "TODAY_TEMP"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

    .line 1485
    const-string v0, "TODAY_HIGH_TEMP"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_HIGH_TEMP_SEC:Ljava/lang/String;

    .line 1486
    const-string v0, "TODAY_LOW_TEMP"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_LOW_TEMP_SEC:Ljava/lang/String;

    .line 1487
    const-string v0, "STATE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

    .line 1488
    const-string v0, "TODAY_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM_SEC:Ljava/lang/String;

    .line 1489
    const-string v0, "WEATHER_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_ICON_NUM_CHN:Ljava/lang/String;

    .line 1490
    const-string v0, "REAL_LOCATION"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_ID_SEC:Ljava/lang/String;

    .line 1491
    const-string v0, "NAME"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_CITY_NAME_SEC:Ljava/lang/String;

    .line 1492
    const-string v0, "TODAY_WEATHER_TEXT"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_STRING_SEC:Ljava/lang/String;

    .line 1493
    const-string v0, "UPDATE_DATE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_WEATHER_REFRESH_TIME_SEC:Ljava/lang/String;

    .line 1494
    const-string v0, "TIMEZONE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TIMEZONE:Ljava/lang/String;

    .line 1495
    const-string v0, "TODAY_SUNRISE_TIME"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

    .line 1496
    const-string v0, "TODAY_SUNSET_TIME"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

    .line 1497
    const-string v0, "CHECK_CURRENT_CITY_LOCATION"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String;

    .line 1500
    const-string v0, "TEMP_SCALE"

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->KEY_TEMP_SCALE_SEC:Ljava/lang/String;

    .line 1517
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 1518
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_SETTING_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->SETTING_URI:Landroid/net/Uri;

    .line 1521
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    .line 1532
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    .line 1533
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    .line 1535
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->initWeatherDaemonInfo()V

    .line 1537
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1568
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1569
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1588
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->init()V

    .line 1589
    return-void

    .line 1584
    :cond_1
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    .prologue
    .line 1395
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->init()V

    return-void
.end method

.method static synthetic access$1602(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    .prologue
    .line 1395
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    return-object v0
.end method

.method private checkDayOrNight()Z
    .locals 11

    .prologue
    const/16 v10, 0x12

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2793
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2794
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_8

    .line 2795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2797
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 2798
    .local v3, "month":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2799
    .local v1, "hour":I
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, month = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2802
    .local v2, "locale":Ljava/lang/String;
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, locale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    if-eqz v2, :cond_6

    .line 2805
    const-string v6, "ko_KR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2806
    const/4 v6, 0x3

    if-lt v3, v6, :cond_2

    const/16 v6, 0xa

    if-ge v3, v6, :cond_2

    .line 2807
    if-lt v1, v9, :cond_0

    const/16 v6, 0x13

    if-lt v1, v6, :cond_1

    :cond_0
    move v4, v5

    .line 2831
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_1
    :goto_0
    return v4

    .line 2812
    .restart local v1    # "hour":I
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v3    # "month":I
    :cond_2
    const/4 v6, 0x7

    if-lt v1, v6, :cond_3

    if-lt v1, v10, :cond_1

    :cond_3
    move v4, v5

    .line 2813
    goto :goto_0

    .line 2818
    :cond_4
    if-lt v1, v9, :cond_5

    if-lt v1, v10, :cond_1

    :cond_5
    move v4, v5

    .line 2819
    goto :goto_0

    .line 2824
    :cond_6
    if-lt v1, v9, :cond_7

    if-lt v1, v10, :cond_1

    :cond_7
    move v4, v5

    .line 2825
    goto :goto_0

    .line 2830
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_8
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkDayOrNight, mCalendar is null, return true"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2586
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2587
    const-string v0, "kweather"

    .line 2591
    :goto_0
    return-object v0

    .line 2588
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2589
    const-string v0, "Cmaweather"

    goto :goto_0

    .line 2591
    :cond_1
    const-string v0, "accuweather"

    goto :goto_0
.end method

.method private getEmergencyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2543
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getKidsModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2547
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 2836
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2839
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2840
    :cond_0
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const-string v0, "-"

    .line 2844
    .end local v0    # "results":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getWeatherEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2538
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getWeatherSettingUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1644
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_SETTING_URI:Landroid/net/Uri;

    .line 1649
    :goto_0
    return-object v0

    .line 1646
    :cond_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1647
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_SETTING_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1649
    :cond_1
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACCU_SETTING_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1592
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getEmergencyModeEnabled()Z

    move-result v0

    .line 1593
    .local v0, "isEmergencyModeEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getKidsModeEnabled()Z

    move-result v1

    .line 1594
    .local v1, "isKidsModeEnabled":Z
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherEnabled()Z

    move-result v2

    .line 1596
    .local v2, "isWeatherWidgetEnabled":Z
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEmergencyModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isKidsModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isWeatherWidgetEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-ne v2, v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1605
    .local v3, "needToShowWeather":Z
    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->setVisibility(I)V

    .line 1606
    return-void

    .end local v3    # "needToShowWeather":Z
    :cond_0
    move v3, v4

    .line 1601
    goto :goto_0

    .line 1605
    .restart local v3    # "needToShowWeather":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private initWeatherDaemonInfo()V
    .locals 3

    .prologue
    .line 2603
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCPName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 2604
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWeatherDaemonInfo, getCPName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2606
    :cond_0
    const-string v0, "accuweather"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    .line 2608
    :cond_1
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2609
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2610
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2611
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 2612
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 2613
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 2632
    :goto_0
    return-void

    .line 2614
    :cond_2
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2615
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2616
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2617
    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 2618
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 2619
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CMA_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2620
    :cond_3
    const-string v0, "weathernewsjp"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2621
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 2622
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHER_NEWS_SETTING_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->SETTING_URI:Landroid/net/Uri;

    .line 2623
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2624
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2625
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 2626
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    .line 2628
    :cond_4
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 2629
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 2630
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateWeatherEnabledStatus()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2596
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2599
    .local v0, "weatherSettingsValue":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    .line 2600
    return-void
.end method


# virtual methods
.method public checkDayOrNightForChina()Z
    .locals 8

    .prologue
    .line 2637
    const/4 v3, 0x0

    .line 2638
    .local v3, "t":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .line 2640
    .local v0, "mIsDay":Z
    const-string v5, "TIMEZONE"

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2641
    .local v4, "timezone":Ljava/lang/String;
    const-string v5, "TODAY_SUNRISE_TIME"

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2642
    .local v1, "sunrise":Ljava/lang/String;
    const-string v5, "TODAY_SUNSET_TIME"

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2643
    .local v2, "sunset":Ljava/lang/String;
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDayOrNightforChina T = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",SS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    if-eqz v4, :cond_0

    .line 2647
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 2650
    :cond_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2651
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDayOrNightforChina, mIsDay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    return v0
.end method

.method public getCheckCurrentCityLocation(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1609
    const/4 v8, 0x0

    .line 1610
    .local v8, "result":I
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherSettingUri()Landroid/net/Uri;

    move-result-object v1

    .line 1611
    .local v1, "settingUri":Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 1612
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCheckCurrent: context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1640
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 1616
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1617
    .local v0, "cp":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1619
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1621
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1625
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1626
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1633
    :cond_1
    if-eqz v6, :cond_2

    .line 1634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_2
    :goto_1
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCurrent: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1640
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 1628
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 1629
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCurrent occur SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    if-eqz v6, :cond_2

    .line 1634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1630
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 1631
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCurrent occur NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1633
    if-eqz v6, :cond_2

    .line 1634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1633
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 1634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getCityId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1682
    const-string v6, ""

    .line 1683
    .local v6, "cityname":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v7, v6

    .line 1706
    .end local v6    # "cityname":Ljava/lang/String;
    .local v7, "cityname":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1687
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 1689
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "REAL_LOCATION"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1693
    if-eqz v8, :cond_1

    .line 1694
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1702
    :cond_1
    if-eqz v8, :cond_2

    .line 1703
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v6

    .line 1706
    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1699
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1702
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 1703
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1702
    .end local v7    # "cityname":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1703
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1710
    const-string v6, ""

    .line 1711
    .local v6, "cityname":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v7, v6

    .line 1734
    .end local v6    # "cityname":Ljava/lang/String;
    .local v7, "cityname":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1715
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 1717
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1721
    if-eqz v8, :cond_1

    .line 1722
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1730
    :cond_1
    if-eqz v8, :cond_2

    .line 1731
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v6

    .line 1734
    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1727
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1730
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_3

    .line 1731
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1730
    .end local v7    # "cityname":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1731
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1884
    const-string v8, ""

    .line 1885
    .local v8, "mCountryName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 1908
    .end local v8    # "mCountryName":Ljava/lang/String;
    .local v9, "mCountryName":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1889
    .end local v9    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 1891
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1895
    if-eqz v6, :cond_1

    .line 1896
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1904
    :cond_1
    if-eqz v6, :cond_2

    .line 1905
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 1908
    .end local v8    # "mCountryName":Ljava/lang/String;
    .restart local v9    # "mCountryName":Ljava/lang/String;
    goto :goto_0

    .line 1901
    .end local v9    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1904
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1905
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mCountryName":Ljava/lang/String;
    .restart local v9    # "mCountryName":Ljava/lang/String;
    goto :goto_0

    .line 1904
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mCountryName":Ljava/lang/String;
    .restart local v8    # "mCountryName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1905
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getHighTemperature()F
    .locals 9

    .prologue
    .line 1767
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1768
    .local v6, "HighTemperature":Ljava/lang/Float;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1769
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1792
    :cond_0
    :goto_0
    return v0

    .line 1772
    :cond_1
    const/4 v7, 0x0

    .line 1774
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1775
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_HIGH_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1778
    if-eqz v7, :cond_2

    .line 1779
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1780
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1787
    :cond_2
    if-eqz v7, :cond_3

    .line 1788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1792
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 1784
    :catch_0
    move-exception v8

    .line 1785
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1787
    if-eqz v7, :cond_0

    .line 1788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1787
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1788
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getHourAndMin(Ljava/lang/String;)[I
    .locals 8
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2758
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2788
    :cond_0
    :goto_0
    return-object v5

    .line 2762
    :cond_1
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2763
    .local v0, "colonIndex":I
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2764
    .local v4, "spaceIndex":I
    const/4 v2, 0x0

    .line 2765
    .local v2, "hour":I
    const/4 v3, 0x0

    .line 2767
    .local v3, "min":I
    const/4 v6, -0x1

    if-le v0, v6, :cond_0

    .line 2769
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2770
    const-string v6, "pm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "PM"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2771
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 2774
    :cond_3
    if-le v4, v0, :cond_4

    .line 2775
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2783
    :goto_1
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 2784
    .local v5, "timeInt":[I
    aput v2, v5, v7

    .line 2785
    const/4 v6, 0x1

    aput v3, v5, v6

    goto :goto_0

    .line 2777
    .end local v5    # "timeInt":[I
    :cond_4
    add-int/lit8 v6, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 2779
    :catch_0
    move-exception v1

    .line 2780
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method getImageIcon(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 2120
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2121
    packed-switch p1, :pswitch_data_0

    .line 2182
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    .line 2509
    :goto_0
    return v0

    .line 2123
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 2126
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 2131
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2134
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 2138
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 2140
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 2144
    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto :goto_0

    .line 2148
    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto :goto_0

    .line 2150
    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto :goto_0

    .line 2156
    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 2160
    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto :goto_0

    .line 2166
    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto :goto_0

    .line 2180
    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto :goto_0

    .line 2184
    :cond_2
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2185
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    packed-switch p1, :pswitch_data_1

    .line 2248
    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2189
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNightForChina()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2190
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 2192
    :cond_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 2195
    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 2197
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNightForChina()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2198
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 2200
    :cond_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 2205
    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 2208
    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 2214
    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2216
    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2218
    :pswitch_13
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto/16 :goto_0

    .line 2222
    :pswitch_14
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 2224
    :pswitch_15
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 2228
    :pswitch_16
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 2231
    :pswitch_17
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 2233
    :pswitch_18
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 2235
    :pswitch_19
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_20:I

    goto/16 :goto_0

    .line 2239
    :pswitch_1a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_21:I

    goto/16 :goto_0

    .line 2244
    :pswitch_1b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_22:I

    goto/16 :goto_0

    .line 2246
    :pswitch_1c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2250
    :cond_5
    const-string v0, "weathernewsjp"

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2251
    sparse-switch p1, :sswitch_data_0

    .line 2437
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2260
    :sswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2274
    :sswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto/16 :goto_0

    .line 2279
    :sswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto/16 :goto_0

    .line 2293
    :sswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto/16 :goto_0

    .line 2314
    :sswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2334
    :sswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2343
    :sswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2349
    :sswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2361
    :sswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2365
    :sswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2392
    :sswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 2398
    :sswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 2408
    :sswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 2427
    :sswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 2430
    :sswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 2433
    :sswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto/16 :goto_0

    .line 2440
    :cond_6
    packed-switch p1, :pswitch_data_2

    .line 2509
    :pswitch_1d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2443
    :pswitch_1e
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2444
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 2446
    :cond_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto/16 :goto_0

    .line 2451
    :pswitch_1f
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2452
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto/16 :goto_0

    .line 2454
    :cond_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto/16 :goto_0

    .line 2460
    :pswitch_20
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto/16 :goto_0

    .line 2462
    :pswitch_21
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto/16 :goto_0

    .line 2467
    :pswitch_22
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 2469
    :pswitch_23
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 2473
    :pswitch_24
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto/16 :goto_0

    .line 2476
    :pswitch_25
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_08:I

    goto/16 :goto_0

    .line 2478
    :pswitch_26
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto/16 :goto_0

    .line 2481
    :pswitch_27
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 2484
    :pswitch_28
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 2488
    :pswitch_29
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 2490
    :pswitch_2a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 2494
    :pswitch_2b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 2496
    :pswitch_2c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto/16 :goto_0

    .line 2498
    :pswitch_2d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_16:I

    goto/16 :goto_0

    .line 2500
    :pswitch_2e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_17:I

    goto/16 :goto_0

    .line 2502
    :pswitch_2f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto/16 :goto_0

    .line 2507
    :pswitch_30
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto/16 :goto_0

    .line 2121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 2187
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_19
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_10
        :pswitch_17
        :pswitch_1b
        :pswitch_f
        :pswitch_1a
        :pswitch_1a
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_16
        :pswitch_16
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_10
    .end packed-switch

    .line 2251
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_b
        0x69 -> :sswitch_b
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_c
        0x74 -> :sswitch_c
        0x75 -> :sswitch_c
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_4
        0xa0 -> :sswitch_b
        0xaa -> :sswitch_b
        0xb5 -> :sswitch_c
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
        0xcc -> :sswitch_a
        0xcd -> :sswitch_a
        0xce -> :sswitch_5
        0xcf -> :sswitch_5
        0xd0 -> :sswitch_5
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_5
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_a
        0xd8 -> :sswitch_a
        0xd9 -> :sswitch_a
        0xda -> :sswitch_5
        0xdb -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe2 -> :sswitch_5
        0xe3 -> :sswitch_5
        0xe4 -> :sswitch_a
        0xe5 -> :sswitch_a
        0xe6 -> :sswitch_a
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_5
        0xfa -> :sswitch_a
        0x104 -> :sswitch_a
        0x10e -> :sswitch_a
        0x119 -> :sswitch_a
        0x12c -> :sswitch_3
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_d
        0x130 -> :sswitch_3
        0x132 -> :sswitch_3
        0x134 -> :sswitch_3
        0x135 -> :sswitch_d
        0x137 -> :sswitch_6
        0x139 -> :sswitch_7
        0x13a -> :sswitch_d
        0x13b -> :sswitch_d
        0x13c -> :sswitch_6
        0x13d -> :sswitch_7
        0x140 -> :sswitch_6
        0x141 -> :sswitch_7
        0x142 -> :sswitch_d
        0x143 -> :sswitch_6
        0x144 -> :sswitch_6
        0x145 -> :sswitch_6
        0x146 -> :sswitch_d
        0x147 -> :sswitch_d
        0x148 -> :sswitch_3
        0x149 -> :sswitch_3
        0x154 -> :sswitch_a
        0x15e -> :sswitch_3
        0x169 -> :sswitch_c
        0x173 -> :sswitch_a
        0x190 -> :sswitch_a
        0x191 -> :sswitch_c
        0x192 -> :sswitch_a
        0x193 -> :sswitch_d
        0x195 -> :sswitch_a
        0x196 -> :sswitch_a
        0x197 -> :sswitch_a
        0x199 -> :sswitch_d
        0x19b -> :sswitch_c
        0x19d -> :sswitch_a
        0x19e -> :sswitch_d
        0x1a4 -> :sswitch_c
        0x1a5 -> :sswitch_a
        0x1a6 -> :sswitch_d
        0x1a7 -> :sswitch_d
        0x1a8 -> :sswitch_d
        0x1a9 -> :sswitch_a
        0x1aa -> :sswitch_a
        0x1ab -> :sswitch_a
        0x1ae -> :sswitch_e
        0x1c2 -> :sswitch_a
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_f
        0x228 -> :sswitch_1
        0x229 -> :sswitch_8
        0x22e -> :sswitch_8
        0x232 -> :sswitch_1
        0x233 -> :sswitch_8
        0x238 -> :sswitch_8
        0x23c -> :sswitch_1
        0x23d -> :sswitch_8
        0x246 -> :sswitch_1
        0x247 -> :sswitch_8
        0x258 -> :sswitch_0
        0x352 -> :sswitch_3
        0x353 -> :sswitch_8
        0x355 -> :sswitch_3
        0x356 -> :sswitch_d
        0x357 -> :sswitch_8
        0x35d -> :sswitch_8
        0x35f -> :sswitch_3
        0x360 -> :sswitch_d
        0x361 -> :sswitch_8
        0x367 -> :sswitch_9
        0x369 -> :sswitch_3
        0x36a -> :sswitch_d
        0x371 -> :sswitch_9
        0x373 -> :sswitch_3
        0x374 -> :sswitch_d
    .end sparse-switch

    .line 2440
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_29
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_1d
        :pswitch_1d
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_20
        :pswitch_22
        :pswitch_22
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_29
    .end packed-switch
.end method

.method public getLowTemperature()F
    .locals 9

    .prologue
    .line 1796
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1797
    .local v8, "mLowTemperature":Ljava/lang/Float;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1798
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1821
    :cond_0
    :goto_0
    return v0

    .line 1801
    :cond_1
    const/4 v6, 0x0

    .line 1803
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1804
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_LOW_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1807
    if-eqz v6, :cond_2

    .line 1808
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1809
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1816
    :cond_2
    if-eqz v6, :cond_3

    .line 1817
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1821
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 1813
    :catch_0
    move-exception v7

    .line 1814
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1816
    if-eqz v6, :cond_0

    .line 1817
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1816
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1817
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getTemperature()F
    .locals 9

    .prologue
    .line 1738
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1739
    .local v8, "mTemperature":Ljava/lang/Float;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1740
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1763
    :cond_0
    :goto_0
    return v0

    .line 1743
    :cond_1
    const/4 v6, 0x0

    .line 1745
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 1746
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1749
    if-eqz v6, :cond_2

    .line 1750
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1751
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1758
    :cond_2
    if-eqz v6, :cond_3

    .line 1759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1763
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 1755
    :catch_0
    move-exception v7

    .line 1756
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1758
    if-eqz v6, :cond_0

    .line 1759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1758
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getTemperatureScale()I
    .locals 10

    .prologue
    .line 1654
    const/4 v8, 0x0

    .line 1655
    .local v8, "mTemperatureScale":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v9, v8

    .line 1678
    .end local v8    # "mTemperatureScale":I
    .local v9, "mTemperatureScale":I
    :goto_0
    return v9

    .line 1659
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :cond_0
    const/4 v6, 0x0

    .line 1661
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1665
    if-eqz v6, :cond_1

    .line 1666
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1674
    :cond_1
    if-eqz v6, :cond_2

    .line 1675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 1678
    .end local v8    # "mTemperatureScale":I
    .restart local v9    # "mTemperatureScale":I
    goto :goto_0

    .line 1671
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :catch_0
    move-exception v7

    .line 1674
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .end local v8    # "mTemperatureScale":I
    .restart local v9    # "mTemperatureScale":I
    goto :goto_0

    .line 1674
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherImage()I
    .locals 10

    .prologue
    .line 1825
    const/4 v8, 0x0

    .line 1826
    .local v8, "iconNum":I
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v9, v8

    .line 1852
    .end local v8    # "iconNum":I
    .local v9, "iconNum":I
    :goto_0
    return v9

    .line 1830
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :cond_0
    const/4 v6, 0x0

    .line 1832
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1833
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_ICON_NUM"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1837
    if-eqz v6, :cond_1

    .line 1838
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1846
    :cond_1
    if-eqz v6, :cond_2

    .line 1847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 1852
    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 1843
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catch_0
    move-exception v7

    .line 1846
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 1846
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "KeyString"    # Ljava/lang/String;

    .prologue
    .line 2656
    const-string v8, ""

    .line 2657
    .local v8, "mRetString":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 2680
    .end local v8    # "mRetString":Ljava/lang/String;
    .local v9, "mRetString":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2661
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 2663
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 2664
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2667
    if-eqz v6, :cond_1

    .line 2668
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2669
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2676
    :cond_1
    if-eqz v6, :cond_2

    .line 2677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 2680
    .end local v8    # "mRetString":Ljava/lang/String;
    .restart local v9    # "mRetString":Ljava/lang/String;
    goto :goto_0

    .line 2673
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2676
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 2677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mRetString":Ljava/lang/String;
    .restart local v9    # "mRetString":Ljava/lang/String;
    goto :goto_0

    .line 2676
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherRefreshTime()J
    .locals 12

    .prologue
    .line 1912
    const-wide/16 v8, 0x0

    .line 1913
    .local v8, "mRefreshTime":J
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-wide v10, v8

    .line 1936
    .end local v8    # "mRefreshTime":J
    .local v10, "mRefreshTime":J
    :goto_0
    return-wide v10

    .line 1917
    .end local v10    # "mRefreshTime":J
    .restart local v8    # "mRefreshTime":J
    :cond_0
    const/4 v6, 0x0

    .line 1919
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1920
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UPDATE_DATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1923
    if-eqz v6, :cond_1

    .line 1924
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1925
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 1932
    :cond_1
    if-eqz v6, :cond_2

    .line 1933
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v10, v8

    .line 1936
    .end local v8    # "mRefreshTime":J
    .restart local v10    # "mRefreshTime":J
    goto :goto_0

    .line 1929
    .end local v10    # "mRefreshTime":J
    .restart local v8    # "mRefreshTime":J
    :catch_0
    move-exception v7

    .line 1932
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1933
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v10, v8

    .end local v8    # "mRefreshTime":J
    .restart local v10    # "mRefreshTime":J
    goto :goto_0

    .line 1932
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "mRefreshTime":J
    .restart local v8    # "mRefreshTime":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1933
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getWeatherString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1856
    const-string v8, ""

    .line 1857
    .local v8, "mWeather":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v9, v8

    .line 1880
    .end local v8    # "mWeather":Ljava/lang/String;
    .local v9, "mWeather":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1861
    .end local v9    # "mWeather":Ljava/lang/String;
    .restart local v8    # "mWeather":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 1863
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_WEATHER_TEXT"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1867
    if-eqz v6, :cond_1

    .line 1868
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1876
    :cond_1
    if-eqz v6, :cond_2

    .line 1877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 1880
    .end local v8    # "mWeather":Ljava/lang/String;
    .restart local v9    # "mWeather":Ljava/lang/String;
    goto :goto_0

    .line 1873
    .end local v9    # "mWeather":Ljava/lang/String;
    .restart local v8    # "mWeather":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1876
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mWeather":Ljava/lang/String;
    .restart local v9    # "mWeather":Ljava/lang/String;
    goto :goto_0

    .line 1876
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mWeather":Ljava/lang/String;
    .restart local v8    # "mWeather":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isChinaLocation(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1940
    const-string v6, ""

    .line 1941
    .local v6, "cityname":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1942
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isChinaLocation: context is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 1974
    :goto_0
    return v1

    .line 1946
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1948
    .local v0, "cp":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1950
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1953
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    if-eqz v7, :cond_1

    .line 1955
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1956
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1962
    :cond_1
    if-eqz v7, :cond_2

    .line 1963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1966
    :cond_2
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityname :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    if-eqz v6, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    move v1, v9

    .line 1969
    goto :goto_0

    .line 1959
    :catch_0
    move-exception v8

    .line 1962
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_4

    .line 1963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v9

    goto :goto_0

    .line 1962
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 1963
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 1971
    :cond_6
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->china_country_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v10

    .line 1972
    goto/16 :goto_0

    :cond_7
    move v1, v9

    .line 1974
    goto/16 :goto_0
.end method

.method public isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "sunrise"    # Ljava/lang/String;
    .param p3, "sunset"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2684
    const/4 v0, 0x0

    .line 2685
    .local v0, "cal":Ljava/util/Calendar;
    if-eqz p1, :cond_2

    .line 2686
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2691
    :goto_0
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2692
    .local v2, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2693
    .local v3, "minute":I
    invoke-virtual {p0, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->parseSunrise(Ljava/lang/String;Ljava/util/Calendar;)[I

    move-result-object v1

    .line 2694
    .local v1, "dayTime":[I
    invoke-virtual {p0, p3, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->parseSunSet(Ljava/lang/String;Ljava/util/Calendar;)[I

    move-result-object v4

    .line 2695
    .local v4, "nightTime":[I
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 2696
    aget v7, v1, v5

    if-gt v2, v7, :cond_0

    aget v7, v1, v5

    if-ne v2, v7, :cond_1

    aget v7, v1, v6

    if-lt v3, v7, :cond_1

    .line 2697
    :cond_0
    aget v7, v4, v5

    if-gt v2, v7, :cond_1

    aget v7, v4, v5

    if-ne v2, v7, :cond_3

    aget v7, v4, v6

    if-lt v3, v7, :cond_3

    .line 2704
    :cond_1
    :goto_1
    return v5

    .line 2688
    .end local v1    # "dayTime":[I
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    .end local v4    # "nightTime":[I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .restart local v1    # "dayTime":[I
    .restart local v2    # "hour":I
    .restart local v3    # "minute":I
    .restart local v4    # "nightTime":[I
    :cond_3
    move v5, v6

    .line 2700
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2552
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2553
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2554
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_weather"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2556
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2558
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2560
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2562
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kids_home_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2564
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Weather onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->updateWeatherEnabledStatus()V

    .line 2568
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mIsWeather:Z

    if-eqz v1, :cond_0

    .line 2569
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2570
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2571
    const-string v1, "PACKAGE"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2572
    const-string v1, "CP"

    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2575
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->updateWeatherInfoSec()V

    .line 2577
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2581
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2582
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2583
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 2516
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2517
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contextual_holder:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    .line 2518
    sget v0, Lcom/sec/android/sviewcover/R$id;->weather_icon:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 2522
    sget v0, Lcom/sec/android/sviewcover/R$id;->temporature:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 2523
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_temp:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    .line 2524
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    .line 2527
    sget v0, Lcom/sec/android/sviewcover/R$id;->temporature_high_low:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    .line 2528
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_temp_high:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempHigh:Landroid/widget/TextView;

    .line 2529
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit_high:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    .line 2530
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_divider:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDivider:Landroid/widget/ImageView;

    .line 2531
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_temp_low:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempLow:Landroid/widget/TextView;

    .line 2532
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit_low:I

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    .line 2535
    return-void
.end method

.method public parseSunSet(Ljava/lang/String;Ljava/util/Calendar;)[I
    .locals 7
    .param p1, "sunset"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0x15

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2734
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2735
    .local v0, "month":I
    const/4 v1, 0x0

    .line 2736
    .local v1, "nightTime":[I
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v1

    .line 2737
    if-eqz v1, :cond_2

    .line 2739
    aget v2, v1, v4

    if-ge v2, v6, :cond_0

    aget v2, v1, v4

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 2740
    :cond_0
    aput v6, v1, v4

    .line 2741
    aput v4, v1, v5

    .line 2753
    :cond_1
    :goto_0
    return-object v1

    .line 2744
    :cond_2
    new-array v1, v3, [I

    .line 2745
    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 2746
    const/16 v2, 0x13

    aput v2, v1, v4

    .line 2750
    :goto_1
    aput v4, v1, v5

    goto :goto_0

    .line 2748
    :cond_3
    const/16 v2, 0x12

    aput v2, v1, v4

    goto :goto_1
.end method

.method public parseSunrise(Ljava/lang/String;Ljava/util/Calendar;)[I
    .locals 7
    .param p1, "sunrise"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2710
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 2711
    .local v1, "month":I
    const/4 v0, 0x0

    .line 2712
    .local v0, "dayTime":[I
    invoke-virtual {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    .line 2713
    if-eqz v0, :cond_2

    .line 2715
    aget v2, v0, v4

    if-lt v2, v6, :cond_0

    aget v2, v0, v4

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2716
    :cond_0
    aput v6, v0, v4

    .line 2717
    aput v4, v0, v5

    .line 2728
    :cond_1
    :goto_0
    return-object v0

    .line 2720
    :cond_2
    new-array v0, v3, [I

    .line 2721
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 2722
    const/4 v2, 0x6

    aput v2, v0, v4

    .line 2726
    :goto_1
    aput v4, v0, v5

    goto :goto_0

    .line 2724
    :cond_3
    const/4 v2, 0x7

    aput v2, v0, v4

    goto :goto_1
.end method

.method updateWeatherInfoSec()V
    .locals 19

    .prologue
    .line 1979
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    if-nez v15, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCityId()Ljava/lang/String;

    move-result-object v1

    .line 1984
    .local v1, "cityId":Ljava/lang/String;
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    if-eqz v1, :cond_e

    const-string v15, ""

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 1991
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherImage()I

    move-result v8

    .line 1993
    .local v8, "iconNum":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    if-eqz v15, :cond_2

    .line 1994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getImageIcon(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1996
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getCityName()Ljava/lang/String;

    move-result-object v2

    .line 1997
    .local v2, "currentCityName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    if-eqz v15, :cond_3

    .line 1998
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2000
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getWeatherString()Ljava/lang/String;

    move-result-object v5

    .line 2001
    .local v5, "currentWeatherText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherStatus:Landroid/widget/TextView;

    if-eqz v15, :cond_4

    .line 2002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherStatus:Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    :cond_4
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isChinaFeature()Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->isChinaLocation(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getHighTemperature()F

    move-result v6

    .line 2008
    .local v6, "highTemp":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getLowTemperature()F

    move-result v9

    .line 2010
    .local v9, "lowTemp":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getValidTemp(F)Ljava/lang/String;

    move-result-object v7

    .line 2011
    .local v7, "highTempString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getValidTemp(F)Ljava/lang/String;

    move-result-object v10

    .line 2013
    .local v10, "lowTempString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_weather_image_size_changed:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v14, v15

    .line 2020
    .local v14, "width":I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2021
    .local v11, "par":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_weather_image_margin_top:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2023
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_weather_image_margin_right:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2025
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    if-eqz v15, :cond_5

    .line 2026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2028
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempHigh:Landroid/widget/TextView;

    if-eqz v15, :cond_7

    .line 2029
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempHigh:Landroid/widget/TextView;

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperatureScale()I

    move-result v12

    .line 2033
    .local v12, "tempScale":I
    const-string v13, ""

    .line 2034
    .local v13, "unit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    if-eqz v15, :cond_6

    .line 2035
    if-nez v12, :cond_9

    .line 2036
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2037
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2049
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2051
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " highTemp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tempScale="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iconNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempLow:Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 2056
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mDivider:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_slash:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2057
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTempLow:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperatureScale()I

    move-result v12

    .line 2061
    .restart local v12    # "tempScale":I
    const-string v13, ""

    .line 2062
    .restart local v13    # "unit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    if-eqz v15, :cond_8

    .line 2063
    if-nez v12, :cond_a

    .line 2064
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2065
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2077
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2079
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " lowTemp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tempScale="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iconNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2042
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitHigh:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2043
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 2070
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnitLow:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2071
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 2085
    .end local v6    # "highTemp":F
    .end local v7    # "highTempString":Ljava/lang/String;
    .end local v9    # "lowTemp":F
    .end local v10    # "lowTempString":Ljava/lang/String;
    .end local v11    # "par":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    .end local v14    # "width":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperature()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2086
    .local v3, "currentTemp":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2087
    .local v4, "currentTempString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 2088
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherTemp:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->getTemperatureScale()I

    move-result v12

    .line 2092
    .restart local v12    # "tempScale":I
    const-string v13, ""

    .line 2093
    .restart local v13    # "unit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    if-eqz v15, :cond_c

    .line 2094
    if-nez v12, :cond_d

    .line 2095
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2096
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2108
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherContainer:Landroid/widget/LinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2109
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " currentTemp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tempScale="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " iconNum="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2101
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherUnit:Landroid/widget/ImageView;

    sget v16, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2102
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 2114
    .end local v2    # "currentCityName":Ljava/lang/String;
    .end local v3    # "currentTemp":I
    .end local v4    # "currentTempString":Ljava/lang/String;
    .end local v5    # "currentWeatherText":Ljava/lang/String;
    .end local v8    # "iconNum":I
    .end local v12    # "tempScale":I
    .end local v13    # "unit":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->mWeatherWidget:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cityId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
