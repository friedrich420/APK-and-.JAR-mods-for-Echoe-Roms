.class Lcom/android/launcher2/WorkspacePages;
.super Ljava/lang/Object;
.source "WorkspacePages.java"


# static fields
.field private static final PREFERENCES_EMPTYPAGES:Ljava/lang/String; = "emptypages"

.field private static mPages:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPageAt(ILandroid/content/Context;)Z
    .locals 5
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 89
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 93
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v0, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v1, v2, p0

    .line 96
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 97
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static deletePageAt(ILandroid/content/Context;)Z
    .locals 5
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 108
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 112
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v3, v0, -0x1

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v4, v4, v0

    aput-boolean v4, v2, v3

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-boolean v1, v2, v3

    .line 115
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 116
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static itemAddedToPage(ILandroid/content/Context;)Z
    .locals 2
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 155
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v1, v1

    if-lt p0, v1, :cond_2

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 163
    :cond_1
    :goto_0
    return v0

    .line 158
    :cond_2
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v1, v1, p0

    if-nez v1, :cond_1

    .line 159
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v1, p0

    .line 161
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static movePage(IILandroid/content/Context;)Z
    .locals 5
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 128
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge p0, v2, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 144
    :goto_0
    return v2

    .line 131
    :cond_1
    if-eq p0, p1, :cond_4

    .line 132
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v2, p0

    .line 133
    .local v0, "fromValue":Z
    if-ge p0, p1, :cond_2

    .line 134
    move v1, p0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 135
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "i":I
    :cond_2
    move v1, p0

    .restart local v1    # "i":I
    :goto_2
    if-le v1, p1, :cond_3

    .line 138
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 140
    :cond_3
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v2, p1

    .line 142
    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 144
    .end local v0    # "fromValue":Z
    .end local v1    # "i":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 174
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readPreferences(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 40
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    if-eqz v4, :cond_1

    .line 65
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    .line 49
    .local v2, "pageCount":I
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_2

    .line 50
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 52
    :cond_2
    new-array v4, v2, [Z

    sput-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 55
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v5, v4, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_3
    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "emptypages"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v6, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 61
    .local v1, "len":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    .line 62
    sget-object v6, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x74

    if-ne v4, v7, :cond_4

    const/4 v4, 0x1

    :goto_2
    aput-boolean v4, v6, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v4, v5

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    move v0, v1

    :goto_3
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 64
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v5, v4, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static writePreferences(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v2, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 75
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    const/16 v3, 0x74

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/16 v3, 0x66

    goto :goto_1

    .line 76
    :cond_1
    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    .local v1, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v3, "emptypages"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method
