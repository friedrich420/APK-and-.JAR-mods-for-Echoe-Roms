.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;,
        Lcom/android/settings/DateTimeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private category_international_roaming:Landroid/preference/PreferenceGroup;

.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field private mFirstId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondId:I

.field private mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/CheckBoxPreference;

.field private mTimeDisplayScheme:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;

.field private mTimeZoneRecommend:Landroid/preference/Preference;

.field private mTzHidden1:Z

.field private mTzHidden2:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 138
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 141
    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    .line 943
    new-instance v0, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$3;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 958
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DateTimeSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 301
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "firstRun"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 303
    .local v6, "isFirstRun":Z
    if-ne v6, v8, :cond_0

    .line 346
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v7, "auto_time"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 307
    .local v1, "autoEnabled":Z
    const-string v7, "auto_time_zone"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 309
    .local v2, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "content://com.sec.knox.provider/DateTimePolicy"

    const-string v11, "isDateTimeChangeEnalbed"

    invoke-static {v7, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 311
    .local v5, "isDateTimeChangeEnabled":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    if-ne v5, v8, :cond_2

    :cond_1
    move v3, v8

    .line 313
    .local v3, "dateTimeChangeEnabled":Z
    :goto_1
    if-nez v3, :cond_3

    .line 314
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 317
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 318
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v3    # "dateTimeChangeEnabled":Z
    :cond_2
    move v3, v9

    .line 311
    goto :goto_1

    .line 322
    .restart local v3    # "dateTimeChangeEnabled":Z
    :cond_3
    const-string v7, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 323
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 324
    .local v0, "activePhone":I
    const/4 v7, 0x4

    if-lt v0, v7, :cond_4

    .line 325
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 326
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 327
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 331
    :cond_4
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_6

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_7

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_5

    move v9, v8

    :cond_5
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 335
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    move v7, v9

    .line 331
    goto :goto_2

    :cond_7
    move v7, v9

    .line 332
    goto :goto_3

    .line 339
    .end local v0    # "activePhone":I
    :cond_8
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_b

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 342
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 343
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v7, v9

    .line 339
    goto :goto_4

    :cond_b
    move v7, v9

    .line 340
    goto :goto_5
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 11
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    const/4 v10, 0x0

    .line 687
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 688
    .local v6, "t":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 689
    const/16 v7, 0x7d0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v10, v8}, Ljava/util/Calendar;->set(III)V

    .line 690
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 691
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 692
    const/16 v7, 0x7f4

    const/16 v8, 0xb

    const/16 v9, 0x1f

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 693
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 696
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v2

    .line 697
    .local v2, "cv":Landroid/widget/CalendarView;
    if-eqz v2, :cond_0

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 698
    invoke-virtual {v2, v10}, Landroid/widget/CalendarView;->setShowWeekNumber(Z)V

    .line 700
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 701
    .local v1, "currentTimezone":Ljava/util/TimeZone;
    const-string v7, "America/Sao_Paulo"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 702
    .local v0, "brasilia":Ljava/util/TimeZone;
    const-string v7, "America/Santiago"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 703
    .local v3, "santiago":Ljava/util/TimeZone;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 704
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v4

    .line 705
    .local v4, "minDate":J
    const-wide/32 v8, 0x36ee80

    sub-long/2addr v4, v8

    .line 706
    invoke-virtual {p0, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 708
    .end local v4    # "minDate":J
    :cond_2
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 845
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 847
    :cond_0
    :goto_0
    return v1

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 913
    :try_start_0
    sget-object v3, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    const v4, 0x7f0700df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 914
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 915
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 916
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 917
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 918
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 923
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 924
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 925
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 934
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 940
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p0

    .line 921
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 935
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 936
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 929
    .end local v1    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 930
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 937
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 938
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 932
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 10
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "includeName"    # Z

    .prologue
    const/4 v3, 0x1

    .line 879
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 882
    .local v5, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "ZZZZ"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 883
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 884
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 888
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 889
    .local v4, "l":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v3, :cond_0

    .line 890
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 893
    if-nez p1, :cond_2

    .line 906
    .end local v2    # "gmtString":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 889
    .end local v3    # "isRtl":Z
    .restart local v2    # "gmtString":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 890
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 898
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "zzzz"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 899
    .local v6, "zoneNameFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 900
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 902
    .local v7, "zoneNameString":Ljava/lang/String;
    const-string v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 903
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 906
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private initUI()V
    .locals 18

    .prologue
    .line 186
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v8

    .line 187
    .local v8, "autoTimeEnabled":Z
    const-string v1, "auto_time_zone"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v9

    .line 189
    .local v9, "autoTimeZoneEnabled":Z
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 191
    const-string v1, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    .line 193
    .local v12, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v12}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 201
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 202
    .local v16, "intent":Landroid/content/Intent;
    const-string v1, "firstRun"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 204
    .local v17, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    const-string v1, "auto_zone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    :cond_1
    const/4 v9, 0x0

    .line 218
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    const-string v1, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 221
    const-string v1, "24 hour"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    .line 222
    const-string v1, "timezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 223
    const-string v1, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 224
    const-string v1, "date_format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 225
    const-string v1, "dualclock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "dualclock_menu_settings"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    :cond_3
    :goto_1
    if-eqz v17, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatEntries()V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 244
    .local v11, "dateFormats":[Ljava/lang/String;
    array-length v1, v11

    new-array v14, v1, [Ljava/lang/String;

    .line 245
    .local v14, "formattedDates":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "currentFormat":Ljava/lang/String;
    if-nez v10, :cond_5

    .line 249
    const-string v10, ""

    .line 253
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 255
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v1, v14

    if-ge v15, v1, :cond_9

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v11, v15

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 260
    .local v13, "formatted":Ljava/lang/String;
    aget-object v1, v11, v15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v15

    .line 255
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 228
    .end local v10    # "currentFormat":Ljava/lang/String;
    .end local v11    # "dateFormats":[Ljava/lang/String;
    .end local v13    # "formatted":Ljava/lang/String;
    .end local v14    # "formattedDates":[Ljava/lang/String;
    .end local v15    # "i":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 230
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 264
    .restart local v10    # "currentFormat":Ljava/lang/String;
    .restart local v11    # "dateFormats":[Ljava/lang/String;
    .restart local v13    # "formatted":Ljava/lang/String;
    .restart local v14    # "formattedDates":[Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_8
    aput-object v13, v14, v15

    goto :goto_3

    .line 268
    .end local v13    # "formatted":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v8, :cond_e

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v8, :cond_f

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v9, :cond_10

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 281
    const-string v1, "category_international_roaming_time_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    .line 282
    const-string v1, "time_zone_recommend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    .line 283
    const-string v1, "time_display_scheme_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    .line 285
    if-nez v17, :cond_a

    const-string v1, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 286
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_b

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndAvail()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 292
    :cond_c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 294
    const-string v1, "DateTimeSettings"

    const-string v2, "Not in roaming state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_d
    return-void

    .line 272
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 273
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 274
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_6
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 836
    return-void

    .line 833
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 852
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 854
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 855
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 856
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 857
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 859
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 860
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 862
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 865
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 867
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 868
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 869
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 870
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 871
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 873
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 874
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 876
    :cond_0
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 1019
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1020
    if-eqz p3, :cond_1

    .line 1021
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private timeUpdated(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 824
    return-void
.end method


# virtual methods
.method public ChangeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 546
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 547
    const-string v3, "."

    const-string v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 548
    const-string v1, ""

    .line 549
    .local v1, "RetDateFormat":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 551
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 552
    .local v0, "NumCheck":C
    const/16 v3, 0x2f

    if-le v0, v3, :cond_0

    const/16 v3, 0x3a

    if-lt v0, v3, :cond_1

    :cond_0
    const/16 v3, 0x660

    if-lt v0, v3, :cond_2

    const/16 v3, 0x669

    if-gt v0, v3, :cond_2

    .line 553
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "NumCheck":C
    :cond_3
    return-object v1
.end method

.method public SetRegionalDate_Update()I
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 561
    .local v8, "dateFormats":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 562
    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v8, v5

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 565
    .local v10, "format":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/DateTimeSettings;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 566
    const/4 v9, 0x0

    .line 567
    .local v9, "flag":Z
    const/4 v7, 0x0

    .line 569
    .local v7, "curAppliedDate":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    array-length v1, v8

    if-ge v11, v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v8, v11

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 571
    .local v12, "tempDate":Ljava/lang/String;
    invoke-virtual {p0, v12}, Lcom/android/settings/DateTimeSettings;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 572
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    move v7, v11

    .line 574
    const/4 v9, 0x1

    .line 578
    .end local v12    # "tempDate":Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 579
    const/4 v7, -0x1

    .line 581
    :cond_1
    return v7

    .line 569
    .restart local v12    # "tempDate":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1191
    const-string v0, "0"

    .line 1192
    .local v0, "current_slot":Ljava/lang/String;
    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    const-string v0, "0"

    .line 1199
    :goto_0
    return-object v0

    .line 1194
    :cond_0
    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    const-string v0, "1"

    goto :goto_0

    .line 1197
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public isDataRoaming()Z
    .locals 4

    .prologue
    .line 1113
    const-string v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "simState":Ljava/lang/String;
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget v1, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 1117
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataRoamingSecondary()Z
    .locals 4

    .prologue
    .line 1122
    const-string v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "simState2":Ljava/lang/String;
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    iget v1, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 1126
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSlot1CdmaActive()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1173
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1174
    .local v1, "cdmaCardStatus":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 1175
    .local v0, "cdmaActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1176
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdmaActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdmaCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v3

    .end local v0    # "cdmaActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 1174
    goto :goto_0

    .restart local v0    # "cdmaActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 1178
    goto :goto_1
.end method

.method public isSlot1CdmaActiveinRoaming()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1182
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1183
    .local v1, "cdmaCardStatus":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 1184
    .local v0, "cdmaActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1185
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdmaActive r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdmaCardStatus r= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v3

    .end local v0    # "cdmaActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 1183
    goto :goto_0

    .restart local v0    # "cdmaActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 1187
    goto :goto_1
.end method

.method public isSlot1GsmActive()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1148
    const/16 v1, 0x9

    .line 1150
    .local v1, "gsmCardStatus":I
    const-string v5, "DCGG"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1151
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1156
    :goto_0
    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    move v0, v3

    .line 1157
    .local v0, "gsmActive":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1158
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v3

    .line 1153
    .end local v0    # "gsmActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1156
    goto :goto_1

    .restart local v0    # "gsmActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_2
    move v3, v4

    .line 1160
    goto :goto_2
.end method

.method public isSlot2GsmActive()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1164
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1165
    .local v1, "gsmCardStatus":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 1166
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1167
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v3

    .end local v0    # "gsmActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 1165
    goto :goto_0

    .restart local v0    # "gsmActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 1169
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 796
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    .line 176
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 179
    new-instance v0, Lcom/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/16 v8, 0x20

    .line 659
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 660
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 681
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 662
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 668
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 669
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 679
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    .line 672
    :pswitch_1
    new-instance v1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 678
    .local v1, "t":Landroid/app/TimePickerDialog;
    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object v0, v1

    .line 679
    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 514
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 520
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 521
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 415
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 416
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 409
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 800
    const-string v2, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 801
    .local v0, "isRoamingArea":Z
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    .local v1, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a1378

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 805
    const v2, 0x7f0a1a22

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 806
    const v2, 0x104000a

    new-instance v4, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/DateTimeSettings$2;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 812
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 817
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 814
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dualclock_menu_settings"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 739
    iget-boolean v8, p0, Lcom/android/settings/DateTimeSettings;->mOpenDetailMenu:Z

    if-eqz v8, :cond_0

    sget v8, Lcom/android/settings/DateTimeSettings;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 740
    sget v8, Lcom/android/settings/DateTimeSettings;->mSettingValue:I

    if-ne v8, v6, :cond_2

    move v5, v6

    .local v5, "value":Z
    :goto_0
    move-object v0, p2

    .line 741
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 742
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 743
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/DateTimeSettings;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 748
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v5    # "value":Z
    :cond_0
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_3

    .line 749
    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 750
    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 784
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_2
    return v6

    :cond_2
    move v5, v7

    .line 740
    goto :goto_0

    .line 751
    :cond_3
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v7, :cond_4

    .line 753
    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 754
    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_1

    .line 755
    :cond_4
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_5

    .line 756
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 757
    .local v2, "is24Hour":Z
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 759
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_1

    .line 760
    .end local v2    # "is24Hour":Z
    :cond_5
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 761
    const-string v7, "oversea"

    const-string v8, "ril.currentplmn"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 762
    .local v3, "isRoamingArea":Z
    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 763
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 764
    .local v4, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a1378

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 765
    const v7, 0x7f0a1a22

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 766
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 775
    .end local v3    # "isRoamingArea":Z
    .end local v4    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 776
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 777
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.irsettings"

    const-string v8, "com.sec.android.app.irsettings.TimeZoneRecommend"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 779
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 780
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->showTimeDisplaySchemeDialog()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 351
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 352
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "auto_time_zone"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 356
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0, v6, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 378
    iput-boolean v2, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 379
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoaming()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v1

    if-nez v1, :cond_4

    .line 384
    iput-boolean v2, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 385
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 386
    const-string v1, "DateTimeSettings"

    const-string v3, "remove TimeDisplayScheme menu not in roaming"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    if-ne v1, v2, :cond_2

    .line 394
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    :cond_2
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    move v1, v3

    .line 352
    goto/16 :goto_0

    .line 387
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneDisplaySchemeBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iput-boolean v2, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 389
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 390
    const-string v1, "DateTimeSettings"

    const-string v3, "remove TimeDisplayScheme menu in GMT +8:00"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 608
    const-string v7, "date_format"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a016b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "format":Ljava/lang/String;
    const/4 v0, -0x1

    .line 612
    .local v0, "SetDate":I
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c0019

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "dateFormats":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->SetRegionalDate_Update()I

    move-result v0

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "regional"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    aget-object v4, v3, v0

    .line 620
    .end local v3    # "dateFormats":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 655
    .end local v0    # "SetDate":I
    .end local v4    # "format":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 618
    .restart local v0    # "SetDate":I
    .restart local v4    # "format":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "regional"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 623
    .end local v0    # "SetDate":I
    .end local v4    # "format":Ljava/lang/String;
    :cond_2
    const-string v7, "auto_time"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 624
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 625
    .local v1, "autoEnabled":Z
    const-string v7, "DateTimeSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSharedPreferenceChanged KEY_AUTO_TIME preferences.getBoolean() return : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 628
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "firstRun"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 629
    .local v6, "isFirstRun":Z
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    .line 631
    invoke-static {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Lcom/android/settings/DateTimeSettings;)V

    .line 634
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time"

    if-eqz v1, :cond_4

    move v7, v8

    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 637
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_4
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 640
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_1

    :cond_4
    move v7, v9

    .line 634
    goto :goto_2

    :cond_5
    move v7, v9

    .line 636
    goto :goto_3

    :cond_6
    move v8, v9

    .line 637
    goto :goto_4

    .line 642
    .end local v1    # "autoEnabled":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "isFirstRun":Z
    :cond_7
    const-string v7, "auto_zone"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 643
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 644
    .local v2, "autoZoneEnabled":Z
    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 645
    invoke-static {p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeAndTimezoneFragment;->show(Lcom/android/settings/DateTimeSettings;)V

    .line 647
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "auto_time_zone"

    if-eqz v2, :cond_9

    move v7, v8

    :goto_5
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_a

    :goto_6
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto/16 :goto_1

    :cond_9
    move v7, v9

    .line 647
    goto :goto_5

    :cond_a
    move v8, v9

    .line 649
    goto :goto_6
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 529
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 535
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 536
    invoke-static {v0, p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 537
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method showTimeDisplaySchemeDialog()V
    .locals 3

    .prologue
    .line 788
    const v1, 0x7f0a1e4d

    invoke-static {v1}, Lcom/android/settings/TimeDisplaySchemeSettings;->newInstance(I)Lcom/android/settings/TimeDisplaySchemeSettings;

    move-result-object v0

    .line 789
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public timeZoneDisplaySchemeBlocked()Z
    .locals 6

    .prologue
    .line 1131
    const/4 v1, 0x0

    .line 1132
    .local v1, "tzBlocked":Z
    const/4 v0, 0x0

    .line 1134
    .local v0, "offset":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 1135
    .local v2, "zone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v0, v3, 0x3e8

    .line 1137
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneDisplaySchemeBlocked time zone offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 1139
    const/4 v1, 0x1

    .line 1144
    :goto_0
    return v1

    .line 1142
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public timeZoneRcmndAvail()Z
    .locals 14

    .prologue
    .line 1038
    const/4 v1, 0x0

    .line 1039
    .local v1, "chinaArea":Z
    const-string v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, "opNumCdma":Ljava/lang/String;
    const-string v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "opNumGsm":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 1042
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1GsmActive()Z

    move-result v9

    .line 1043
    .local v9, "slot1GsmActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v10

    .line 1045
    .local v10, "slot2GsmActive":Z
    const/4 v4, 0x0

    .local v4, "opNumCdmaInt":I
    const/4 v6, 0x0

    .line 1047
    .local v6, "opNumGsmInt":I
    const/4 v8, 0x1

    .line 1050
    .local v8, "serviceState":I
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 1052
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 1053
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1059
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    .line 1061
    const/4 v11, 0x0

    const/4 v12, 0x3

    :try_start_1
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 1066
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    .line 1068
    const/4 v11, 0x0

    const/4 v12, 0x3

    :try_start_2
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 1073
    :cond_2
    :goto_2
    const/16 v11, 0x1cc

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1c7

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1cc

    if-eq v6, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v6, v11, :cond_4

    .line 1074
    :cond_3
    const/4 v1, 0x1

    .line 1077
    :cond_4
    const-string v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeZoneRcmndAvail chinaArea: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cdma SS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cdmaActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slot1GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slot2GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    if-eqz v1, :cond_5

    .line 1080
    const/4 v11, 0x0

    .line 1095
    :goto_3
    return v11

    .line 1055
    :catch_0
    move-exception v2

    .line 1056
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1062
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1063
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v11, "DateTimeSettings"

    const-string v12, "opNumCdma: Invalid number"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1069
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .line 1070
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "DateTimeSettings"

    const-string v12, "opNumGsm: Invalid number"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1083
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeZoneRcmndAvail UserHandle.myUserId(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_6

    .line 1085
    const/4 v11, 0x1

    goto :goto_3

    .line 1088
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActiveinRoaming()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1089
    const/4 v11, 0x1

    goto :goto_3

    .line 1092
    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1093
    const/4 v11, 0x1

    goto :goto_3

    .line 1095
    :cond_8
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public timeZoneRcmndBlocked()Z
    .locals 6

    .prologue
    .line 1100
    const/4 v2, 0x0

    .line 1101
    .local v2, "timezoneRcmndBlocked":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 1102
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v1

    .line 1104
    .local v1, "gsm2Active":Z
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneRcmndBlocked cdmaActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsm2Active : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneRcmndBlocked UserHandle.myUserId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 1107
    :cond_1
    const/4 v2, 0x1

    .line 1109
    :cond_2
    return v2
.end method

.method public updateDateFormatEntries()V
    .locals 14

    .prologue
    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/16 v2, 0xb

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c0019

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 462
    .local v9, "dateFormats":[Ljava/lang/String;
    array-length v1, v9

    new-array v11, v1, [Ljava/lang/String;

    .line 463
    .local v11, "formattedDates":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "currentFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "regional"

    invoke-static {v1, v6, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 465
    const-string v8, ""

    .line 469
    :cond_0
    if-nez v8, :cond_1

    .line 470
    const-string v8, ""

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 477
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 478
    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 480
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v1, v11

    if-ge v12, v1, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v9, v12

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 490
    .local v10, "formatted":Ljava/lang/String;
    aget-object v1, v9, v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->SetRegionalDate_Update()I

    move-result v7

    .line 492
    .local v7, "SetDate":I
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v9, v7

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016c

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v10, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v12

    .line 480
    .end local v7    # "SetDate":I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 498
    :cond_2
    aput-object v10, v11, v12

    goto :goto_1

    .line 503
    .end local v10    # "formatted":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 504
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 506
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 508
    :cond_4
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    .line 420
    .local v13, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 421
    .local v12, "now":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 422
    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 423
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 426
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 428
    .local v10, "dummyDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "regional"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, "dateFormats":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->SetRegionalDate_Update()I

    move-result v8

    .line 435
    .local v8, "SetDate":I
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v9, v8

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 438
    .local v11, "formatted":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    .end local v8    # "SetDate":I
    .end local v9    # "dateFormats":[Ljava/lang/String;
    .end local v11    # "formatted":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updateDateFormatEntries()V

    .line 454
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 457
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v13, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
