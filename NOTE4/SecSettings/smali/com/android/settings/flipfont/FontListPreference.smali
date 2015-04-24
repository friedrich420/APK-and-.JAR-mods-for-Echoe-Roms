.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;,
        Lcom/android/settings/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static NO_CANCEL:Z

.field public static NO_WARNING_DIALOG:Z

.field public static REBOOT:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDisplaySettings:Lcom/android/settings/DisplaySettings;

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mFontMenu:Lcom/android/settings/FontMenu;

.field private mListDialogIsActive:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    .line 84
    sput-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    .line 87
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    .line 89
    sput-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    .line 1191
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.udrgothic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.udmincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "FlipFont"

    const-string v1, "FontListPreference(Context context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v8, 0x7f0a0d66

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 101
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 104
    iput v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 107
    iput v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 110
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 113
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    .line 116
    const/16 v3, 0x14

    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 127
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 128
    iput v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 131
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 132
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mListDialogIsActive:Z

    .line 133
    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 138
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 141
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 142
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    .line 151
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 152
    const-string v3, "FlipFont"

    const-string v4, "FontListPreference(Context context, AttributeSet attrs)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 156
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 160
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "sPath":Ljava/lang/String;
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v8}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 166
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "sName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 168
    .local v2, "temp":[Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    if-eqz v2, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 170
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 174
    :goto_0
    if-nez v0, :cond_2

    .line 175
    const v3, 0x7f0a0d67

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    .line 185
    :goto_1
    const v3, 0x7f0a0d83

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 186
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v3, :cond_5

    .line 192
    :goto_2
    const v3, 0x7f02010d

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 193
    return-void

    .line 172
    :cond_1
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    :cond_3
    const v3, 0x7f0a0d7b

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    goto :goto_1

    .line 181
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 189
    :cond_5
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;
    .param p1, "x1"    # Lcom/android/settings/flipfont/FontListAdapter;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/flipfont/FontListPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/FontMenu;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/DisplaySettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListPreference;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    return-object v0
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "fontWriter"    # Lcom/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 549
    .local v2, "err_filecopy":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 556
    .local v4, "uriFont":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 558
    .local v3, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 565
    invoke-virtual {p1, p2, v3, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 568
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move v5, v2

    .line 572
    .end local v3    # "isFont":Ljava/io/InputStream;
    .end local v4    # "uriFont":Landroid/net/Uri;
    :goto_1
    return v5

    .line 550
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v5, v2

    .line 551
    goto :goto_1

    .line 559
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isFont":Ljava/io/InputStream;
    .restart local v4    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 561
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 569
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v1, "sbf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0a0d79

    const v3, 0x7f0a0d73

    const v2, 0x7f0a0d72

    const v1, 0x7f0a0d71

    .line 208
    const-string v0, "Rosemary"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .line 262
    .restart local p1    # "fontName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 211
    :cond_0
    const-string v0, "Choco cooky"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 214
    :cond_1
    const-string v0, "Cool jazz"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "HelveticaNeueRegular"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    const-string p1, "Helvetica S"

    goto :goto_0

    .line 220
    :cond_3
    const-string v0, "Samsung sans"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    const-string p1, "Samsung Sans"

    goto :goto_0

    .line 223
    :cond_4
    const-string v0, "Apple mint"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0d74

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto :goto_0

    .line 226
    :cond_5
    const-string v0, "Tinker bell"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0d75

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 229
    :cond_6
    const-string v0, "Shao nv"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a15b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 232
    :cond_7
    const-string v0, "Kaiti"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a15b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 235
    :cond_8
    const-string v0, "Miao"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a15b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 238
    :cond_9
    const-string v0, "UDRGothic"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0d77

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 241
    :cond_a
    const-string v0, "UDMincho"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0d78

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 244
    :cond_b
    const-string v0, "Pop"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 247
    :cond_c
    const-string v0, "arjpopb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 248
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 250
    :cond_d
    const-string v0, "Cool"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 251
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 253
    :cond_e
    const-string v0, "Rose"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 256
    :cond_f
    const-string v0, "Choco"

    invoke-direct {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 257
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "fontName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .restart local p1    # "fontName":Ljava/lang/String;
    goto/16 :goto_0

    .line 260
    :cond_10
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method protected RebootDialog()V
    .locals 6

    .prologue
    .line 1118
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1119
    const-string v3, "FlipFont"

    const-string v4, "RebootDialog()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v3, :cond_1

    .line 1165
    :goto_0
    return-void

    .line 1128
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 1131
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->hideList()V

    .line 1133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1134
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0d7d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1136
    .local v2, "s":Ljava/lang/String;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0d7c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0d7e

    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$10;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$10;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$9;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$9;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1155
    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$11;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$11;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1164
    .local v1, "rebootDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 1309
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    move-object v2, p1

    .line 1315
    .local v2, "deletePackageName":Ljava/lang/String;
    const v3, 0x7f0a0d84

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1318
    const v3, 0x7f0a0d85

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1321
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1324
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$13;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/flipfont/FontListPreference$13;-><init>(Lcom/android/settings/flipfont/FontListPreference;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1344
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$14;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$14;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1352
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1353
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 14
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 1210
    sget-boolean v11, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1211
    const-string v11, "FlipFont"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkFont - checking apkname"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v11, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_3

    .line 1216
    if-eqz p1, :cond_2

    sget-object v11, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1217
    sget-boolean v11, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 1218
    const-string v11, "FlipFont"

    const-string v12, "**Apk name matches list**"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_1
    const/4 v11, 0x0

    .line 1278
    :goto_1
    return v11

    .line 1215
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1225
    :cond_3
    sget-boolean v11, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 1226
    const-string v11, "FlipFont"

    const-string v12, "checkFont - check if valid certificate"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_4
    const/4 v9, 0x0

    .line 1230
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v11, v11, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    invoke-virtual {v11, p1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 1234
    :goto_2
    const/4 v11, 0x1

    new-array v10, v11, [Landroid/content/pm/Signature;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, ""

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v11

    .line 1236
    .local v10, "signatures":[Landroid/content/pm/Signature;
    if-eqz v9, :cond_5

    .line 1237
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1241
    :cond_5
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1242
    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1243
    .local v7, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1245
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v11, "X509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1250
    :goto_3
    const/4 v1, 0x0

    .line 1252
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1257
    :goto_4
    sget-boolean v11, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_6

    .line 1258
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-eqz v1, :cond_6

    .line 1260
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate issued by: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The certificate is valid from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate SN# "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Generated with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_6
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 1270
    .local v3, "certIssuedByString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1272
    .local v8, "issuerDNString":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1273
    sget-boolean v11, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 1274
    const-string v11, "FlipFont"

    const-string v12, "**Certificate data is correct**"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1246
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v8    # "issuerDNString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1248
    .local v5, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_3

    .line 1253
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v5

    .line 1255
    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 1278
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "certIssuedByString":Ljava/lang/String;
    .restart local v8    # "issuerDNString":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1232
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v2    # "cert":[B
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "issuerDNString":Ljava/lang/String;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method public directFontList()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 278
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 279
    return-void
.end method

.method protected dismissApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 992
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 993
    const-string v0, "FlipFont"

    const-string v1, "dismissApp()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 998
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 999
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissList()V

    .line 1001
    return-void
.end method

.method protected dismissList()V
    .locals 3

    .prologue
    .line 1167
    sget-boolean v1, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1168
    const-string v1, "FlipFont"

    const-string v2, "dismissList()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :cond_1
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1175
    const-string v1, "FlipFont"

    const-string v2, "dismissList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected errorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1289
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1292
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1295
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1298
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$12;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$12;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1360
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "defaultFont":Ljava/lang/String;
    const-string v3, "selectedFont"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected hideList()V
    .locals 3

    .prologue
    .line 1182
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1186
    const-string v1, "FlipFont"

    const-string v2, "hideList() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadPreferences()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1098
    const/4 v2, 0x0

    .line 1099
    .local v2, "mode":I
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1102
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v4, "SelectDialogIsActive"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 1103
    const-string v4, "RebootDialogIsActive"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 1104
    const-string v4, "SavedClickedItem"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 1105
    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 1106
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1108
    .local v0, "fontIndexDB":I
    if-ne v0, v7, :cond_0

    .line 1109
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1110
    const-string v4, "FontListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 1116
    :goto_0
    return-void

    .line 1113
    :cond_0
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 6

    .prologue
    .line 781
    sget-boolean v3, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 782
    const-string v3, "FlipFont"

    const-string v4, "onCancelButtonPressed() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 785
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 787
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 788
    .local v2, "v":Landroid/widget/ListView;
    if-eqz v2, :cond_1

    .line 789
    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    .end local v2    # "v":Landroid/widget/ListView;
    :cond_1
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v1

    .line 792
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "FlipFont"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCancelButtonPressed ClassCastException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 806
    sget-boolean v7, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 807
    const-string v7, "FlipFont"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick(DialogInterface dialog, int which) - which = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 811
    iget v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v7, :cond_2

    .line 812
    sget-boolean v7, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 813
    const-string v7, "FlipFont"

    const-string v8, "onClick(DialogInterface dialog, int which) - exit "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_1
    :goto_0
    return-void

    .line 817
    :cond_2
    sget-boolean v7, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 818
    const-string v7, "FlipFont"

    const-string v8, "onClick(DialogInterface dialog, int which) after (which == mPreviousFont) "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_3
    const/4 v7, -0x2

    if-ne p2, v7, :cond_6

    .line 822
    sget-boolean v7, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 823
    const-string v7, "FlipFont"

    const-string v8, "onClick(DialogInterface dialog, int which) after (which == -2) "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_4
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v7, :cond_5

    .line 826
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 827
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 828
    iput-object v12, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 831
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 838
    :cond_6
    const/4 v5, 0x0

    .line 839
    .local v5, "question":Ljava/lang/String;
    const/4 v3, 0x0

    .line 840
    .local v3, "fontName":Ljava/lang/String;
    iput-object v12, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 841
    iput p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 842
    const/4 v4, 0x0

    .line 843
    .local v4, "press_apkname":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v7, :cond_7

    .line 844
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v7, v7, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v8, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 846
    :cond_7
    if-eqz v4, :cond_8

    .line 847
    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    .line 848
    :cond_8
    iget-boolean v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mCheckBadFont:Z

    if-eqz v7, :cond_9

    .line 849
    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListPreference;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :cond_9
    if-ge p2, v10, :cond_a

    .line 854
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0d6c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 856
    .local v6, "s":Ljava/lang/String;
    move-object v5, v6

    .line 867
    :goto_1
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 868
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 869
    .local v1, "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v1, :cond_1

    .line 870
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    .line 871
    const-string v7, "FlipFont"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgName1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 873
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0a00bb

    new-instance v8, Lcom/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v8, p0}, Lcom/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a00bc

    new-instance v9, Lcom/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v9, p0}, Lcom/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 891
    new-instance v7, Lcom/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 899
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0d6d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 900
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 902
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 903
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 905
    iget v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 906
    iput-boolean v10, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 908
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 909
    sget-boolean v7, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v7, :cond_c

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto/16 :goto_0

    .line 858
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "s":Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0d6b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 860
    .restart local v6    # "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v7, :cond_b

    .line 861
    new-instance v7, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 862
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v7}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 864
    :cond_b
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v8, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v7, v8}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v3

    .line 865
    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 913
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    goto/16 :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1009
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 1012
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1013
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->isWidget:Ljava/lang/Boolean;

    .line 1014
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    if-eqz v5, :cond_0

    .line 1015
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    invoke-virtual {v5}, Lcom/android/settings/FontMenu;->finish()V

    .line 1017
    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    if-eqz v5, :cond_1

    .line 1018
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v5}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 1023
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v5, :cond_3

    .line 1047
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d6f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1049
    .local v4, "uri":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1050
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1051
    const v5, 0x14000020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1052
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1053
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1054
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1055
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d6e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "uri":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1057
    .restart local v4    # "uri":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1059
    :cond_2
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "uri":Ljava/lang/String;
    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 1066
    :cond_3
    return-void

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "FontListPreference"

    const-string v6, "ActivityNotFoundException : monotype_samsung_apps."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOkButtonPressed()Z
    .locals 32

    .prologue
    .line 580
    const/16 v17, 0x0

    .line 583
    .local v17, "err_filecopy":Z
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v5, 0x0

    .line 586
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_0

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/flipfont/FontListPreference;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v15

    .line 593
    .local v15, "d":Landroid/app/Dialog;
    invoke-virtual {v15}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ListView;

    .line 594
    .local v29, "v":Landroid/widget/ListView;
    if-nez v29, :cond_1

    const/4 v2, 0x0

    .line 774
    .end local v15    # "d":Landroid/app/Dialog;
    .end local v29    # "v":Landroid/widget/ListView;
    :goto_0
    return v2

    .line 595
    .restart local v15    # "d":Landroid/app/Dialog;
    .restart local v29    # "v":Landroid/widget/ListView;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 597
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 598
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - bad font**"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 603
    .end local v15    # "d":Landroid/app/Dialog;
    .end local v29    # "v":Landroid/widget/ListView;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 604
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 608
    :goto_1
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    .line 612
    new-instance v2, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 616
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 619
    .local v27, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 625
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 628
    .local v3, "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    if-eqz v27, :cond_5

    const-string v2, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 629
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    if-nez v27, :cond_d

    .line 635
    const-string v2, "FontListPreference"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 606
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .end local v27    # "selectedFont":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 642
    .restart local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .restart local v27    # "selectedFont":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v26

    .line 645
    .local v26, "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v25, v27

    .line 646
    .local v25, "sFontDir":Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 647
    .local v22, "index":I
    if-lez v22, :cond_8

    .line 648
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 650
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 653
    .local v4, "fontDir":Ljava/io/File;
    const/16 v28, 0x0

    .line 654
    .local v28, "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v26, :cond_9

    .line 655
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 656
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v28, Lcom/android/settings/flipfont/TypefaceFile;

    .line 659
    .restart local v28    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 660
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 662
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 665
    .local v23, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 667
    .local v13, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 668
    .local v21, "in":Ljava/io/InputStream;
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v17

    .line 669
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v21    # "in":Ljava/io/InputStream;
    .end local v23    # "res":Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 671
    :catch_0
    move-exception v18

    .line 673
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontListPreference;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto :goto_3

    .line 678
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v19    # "i":I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    .line 681
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v15

    .line 683
    .restart local v15    # "d":Landroid/app/Dialog;
    invoke-virtual {v15}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ListView;

    .line 684
    .restart local v29    # "v":Landroid/widget/ListView;
    if-eqz v29, :cond_a

    .line 685
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 687
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 688
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 689
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0798

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/flipfont/FontListPreference;->errorDialog(Ljava/lang/String;)V

    .line 695
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 697
    .end local v15    # "d":Landroid/app/Dialog;
    .end local v29    # "v":Landroid/widget/ListView;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 704
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 707
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, "#"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v22    # "index":I
    .end local v25    # "sFontDir":Ljava/lang/String;
    .end local v26    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .end local v28    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :cond_d
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 716
    .local v11, "am":Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-nez v2, :cond_13

    .line 720
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 728
    :goto_5
    :try_start_3
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 731
    .local v14, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 733
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 738
    .end local v14    # "config":Landroid/content/res/Configuration;
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    const-string v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;

    .line 740
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 708
    .end local v11    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "fontDir":Ljava/io/File;
    .restart local v22    # "index":I
    .restart local v25    # "sFontDir":Ljava/lang/String;
    .restart local v26    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .restart local v28    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :catch_1
    move-exception v16

    .line 709
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v2, "FontListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 721
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "index":I
    .end local v25    # "sFontDir":Ljava/lang/String;
    .end local v26    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .end local v28    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_2
    move-exception v16

    .line 723
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 743
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 744
    .local v9, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 745
    .local v10, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v19, 0x1

    .line 746
    .restart local v19    # "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 747
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 749
    .local v24, "s":Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 750
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 754
    :cond_10
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 756
    :cond_11
    const-string v2, "DCM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 757
    const-string v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 758
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 761
    :cond_12
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 771
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19    # "i":I
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "s":Ljava/lang/String;
    :cond_13
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    .line 774
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 735
    :catch_3
    move-exception v2

    goto/16 :goto_6
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const v5, 0x7f0a0d69

    .line 295
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "selectedFont":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0d6a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "okButton":Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "default"

    .line 316
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 317
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_1
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 330
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz v2, :cond_4

    .line 335
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    :cond_1
    :goto_2
    return-void

    .line 303
    .end local v0    # "okButton":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "okButton":Ljava/lang/String;
    goto/16 :goto_0

    .line 323
    :cond_3
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 325
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 538
    :cond_0
    return-void
.end method

.method public restartNow()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 502
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "nowait"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v3, "interval"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v3, "window"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 510
    iget-boolean v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    if-nez v3, :cond_1

    .line 521
    :cond_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    return-void

    .line 513
    :cond_1
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 1078
    const/4 v1, 0x0

    .line 1079
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1082
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1085
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1086
    const-string v3, "RebootDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1087
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1090
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1093
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1094
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 1366
    const/4 v1, 0x0

    .line 1367
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1369
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1371
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1374
    return-void
.end method

.method public selectDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 919
    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v6, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, "question":Ljava/lang/String;
    const/4 v2, 0x0

    .line 927
    .local v2, "fontName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 928
    iget v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 930
    iget v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v6, v9, :cond_3

    .line 931
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0d6c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 932
    .local v4, "s":Ljava/lang/String;
    move-object v3, v4

    .line 939
    :goto_1
    sget-boolean v6, Lcom/android/settings/flipfont/FontListPreference;->NO_WARNING_DIALOG:Z

    if-eqz v6, :cond_2

    .line 940
    iput-boolean v10, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 941
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->dismissApp()V

    .line 949
    :cond_2
    sget-boolean v6, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-eqz v6, :cond_5

    .line 950
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 956
    .local v5, "setFontString":Ljava/lang/String;
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 957
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v8, p0}, Lcom/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 973
    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$8;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$8;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->hideList()V

    .line 981
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 982
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0d6d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 983
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 984
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 985
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 986
    iget v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 987
    iput-boolean v9, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 988
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    goto/16 :goto_0

    .line 934
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "setFontString":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0d6b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 936
    .restart local v4    # "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v6, :cond_4

    const-string v2, ""

    .line 937
    :goto_3
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 936
    :cond_4
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v6, v7}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 953
    :cond_5
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0d7e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "setFontString":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p1, "displaySettings"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mDisplaySettings:Lcom/android/settings/DisplaySettings;

    .line 286
    return-void
.end method

.method public setObject(Lcom/android/settings/FontMenu;)V
    .locals 0
    .param p1, "fontMenu"    # Lcom/android/settings/FontMenu;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontMenu:Lcom/android/settings/FontMenu;

    .line 283
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 467
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "FlipFont"

    const-string v1, "showDialog  (AlertDialog.Builder builder)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_2

    .line 470
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 471
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-nez v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 481
    const v0, 0x7f0a0d70

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 483
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 485
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 486
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    .line 490
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 491
    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->RebootDialog()V

    goto :goto_0
.end method
