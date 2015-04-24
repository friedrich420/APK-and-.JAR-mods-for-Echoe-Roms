.class public Lcom/android/settings/FontMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FontMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mFontList:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/FontMenu;->LARGE_FONT_SCALE:F

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/FontMenu;->mDirect:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontMenu;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/FontMenu;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 5
    .param p1, "fontSizePref"    # Landroid/preference/ListPreference;

    .prologue
    .line 401
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "values":[Ljava/lang/CharSequence;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v1, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 411
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    .end local v0    # "i":I
    .end local v1    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2    # "values":[Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "values":[Ljava/lang/CharSequence;
    goto :goto_0

    .line 406
    .end local v2    # "values":[Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "values":[Ljava/lang/CharSequence;
    goto :goto_0

    .line 414
    .restart local v0    # "i":I
    .restart local v1    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 7
    .param p1, "fontSizePref"    # Landroid/preference/ListPreference;

    .prologue
    .line 420
    iget-object v5, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 426
    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontMenu;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 253
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 257
    iget-object v4, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "indices":[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 267
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_4

    .line 268
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 269
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_3

    .line 270
    add-int/lit8 v4, v0, -0x1

    .line 274
    .end local v3    # "thisVal":F
    :goto_2
    return v4

    .line 259
    .end local v0    # "i":I
    .end local v1    # "indices":[Ljava/lang/String;
    .end local v2    # "lastVal":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v1    # "indices":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    iget-object v4, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v1    # "indices":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 272
    .restart local v0    # "i":I
    .restart local v2    # "lastVal":F
    .restart local v3    # "thisVal":F
    :cond_3
    move v2, v3

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    .end local v3    # "thisVal":F
    :cond_4
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FontMenu"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    .line 84
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/android/settings/FontMenu;->addPreferencesFromResource(I)V

    .line 86
    const-string v1, "MONOTYPE"

    invoke-virtual {p0, v1}, Lcom/android/settings/FontMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/flipfont/FontListPreference;

    iput-object v1, p0, Lcom/android/settings/FontMenu;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    .line 87
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/FontMenu;)V

    .line 88
    const-string v1, "font_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/FontMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FontSizeListPreference;

    iput-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 89
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/FontMenu;)V

    .line 90
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/FontMenu;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    .line 98
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/FontMenu;->mDirect:I

    .line 100
    const-string v1, "Direct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/FontMenu;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-void

    .line 92
    .end local v0    # "activity":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/FontMenu;->updateFontsizeList(Landroid/preference/ListPreference;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v6, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 281
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/FontMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 283
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040194

    invoke-virtual {v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "layout":Landroid/view/View;
    const v7, 0x7f1003cc

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 286
    .local v5, "sevenFontWarning":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    const v7, 0x7f0a0082

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 289
    :cond_0
    const v7, 0x7f100167

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 290
    .local v4, "mcheck":Landroid/widget/CheckBox;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x2

    if-ne p1, v7, :cond_2

    .line 293
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0084

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/FontMenu$2;

    invoke-direct {v8, p0, v0, v4}, Lcom/android/settings/FontMenu$2;-><init>(Lcom/android/settings/FontMenu;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 313
    :cond_1
    :goto_0
    return-object v6

    .line 304
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a0e41

    new-instance v8, Lcom/android/settings/FontMenu$3;

    invoke-direct {v8, p0}, Lcom/android/settings/FontMenu$3;-><init>(Lcom/android/settings/FontMenu;)V

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 141
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 197
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "key":Ljava/lang/String;
    const-string v7, "font_size"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 202
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/settings/FontMenu;->floatToIndex(F)I

    move-result v1

    .line 203
    .local v1, "fontIndex":I
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 205
    .local v6, "previousIndex":I
    iget-object v7, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 210
    :cond_0
    :goto_0
    const-string v7, "FontMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KKK onPreferenceChange fontIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "font_size"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    sget v7, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ge v6, v7, :cond_5

    sget v7, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v7, :cond_5

    .line 214
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "i":Landroid/content/Intent;
    const-string v7, "large_font"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    const-string v7, "FontMenu"

    const-string v8, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 232
    .local v5, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "pref_font_noti"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    .local v0, "do_not_show_again":Ljava/lang/Boolean;
    sget v7, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 235
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/settings/FontMenu;->showDialog(I)V

    .line 237
    :cond_2
    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 239
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/settings/FontMenu$1;

    invoke-direct {v7, p0, p2}, Lcom/android/settings/FontMenu$1;-><init>(Lcom/android/settings/FontMenu;Ljava/lang/Object;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    .end local v0    # "do_not_show_again":Ljava/lang/Boolean;
    .end local v1    # "fontIndex":I
    .end local v4    # "mHandler":Landroid/os/Handler;
    .end local v5    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "previousIndex":I
    :cond_3
    return v10

    .line 207
    .restart local v1    # "fontIndex":I
    .restart local v6    # "previousIndex":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 220
    :cond_5
    sget v7, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v6, v7, :cond_1

    sget v7, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ge v1, v7, :cond_1

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v7, "large_font"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    const-string v7, "FontMenu"

    const-string v8, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 438
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v1, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/settings/FontMenu;->showDialog(I)V

    .line 446
    :goto_0
    return v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "super_mOpenDetailMenu":Z
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 113
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "isEasyMode":I
    if-nez v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    const v3, 0x7f0a06cb

    invoke-virtual {v2, v3}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/FontMenu;->updateState()V

    .line 124
    iget v2, p0, Lcom/android/settings/FontMenu;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 125
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    .line 131
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 134
    return-void

    .line 126
    :cond_2
    iget v2, p0, Lcom/android/settings/FontMenu;->mDirect:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListPreference;->directFontList()V

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 11
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 341
    invoke-virtual {p1}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 342
    invoke-virtual {p1, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 345
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFontSizePreference : mCurConfig.fontScale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v6}, Lcom/android/settings/FontMenu;->floatToIndex(F)I

    move-result v3

    .line 355
    .local v3, "index":I
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFontSizePreference : font index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, "fontIndex":I
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KKK readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    if-ne v3, v9, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    .line 360
    const/4 v3, 0x2

    .line 361
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KKK Folder readFontSizePreference : Extra large font. index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 380
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 382
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 383
    const v6, 0x7f0c002e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "fontSizeNames":[Ljava/lang/String;
    :goto_2
    const/4 v5, 0x0

    .line 393
    .local v5, "summary":Ljava/lang/String;
    const v6, 0x7f0a06cc

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v2, v3

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 396
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    :goto_3
    return-void

    .line 346
    .end local v1    # "fontIndex":I
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "summary":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "FontMenu"

    const-string v7, "Unable to retrieve font size"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fontIndex":I
    .restart local v3    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_1

    .line 365
    const/4 v3, 0x3

    .line 366
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KKK Easy readFontSizePreference : Extra large font. index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 369
    :cond_3
    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_1

    .line 370
    sget v3, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    .line 371
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KKK readFontSizePreference : Extra large font. index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 384
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 385
    const v6, 0x7f0c002d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto/16 :goto_2

    .line 386
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 387
    const v6, 0x7f0c002b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto/16 :goto_2

    .line 389
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    :cond_6
    const v6, 0x7f0c0029

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto/16 :goto_2

    .line 394
    .restart local v5    # "summary":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 396
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v6

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    throw v6
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 321
    .local v1, "fontScale":F
    const-string v2, "FontMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    :cond_0
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 324
    sget v1, Lcom/android/settings/FontMenu;->LARGE_FONT_SCALE:F

    .line 325
    const-string v2, "FontMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 334
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v1    # "fontScale":F
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FontMenu"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
