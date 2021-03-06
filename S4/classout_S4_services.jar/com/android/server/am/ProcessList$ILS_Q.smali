.class public final Lcom/android/server/am/ProcessList$ILS_Q;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ILS_Q"
.end annotation


# static fields
.field private static HARD_FLAG:Z

.field private static ILS_DEBUG:Z

.field private static MAX_Q_SIZE:I

.field private static Q_Front:I

.field private static Q_Node:[Ljava/lang/String;

.field private static Q_Rear:I

.field private static Q_Size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 910
    sput-boolean v2, HARD_FLAG:Z

    .line 913
    const-string/jumbo v0, "ro.config.dha_ils_size"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_Q_SIZE:I

    .line 914
    sput v2, Q_Front:I

    .line 915
    sput v2, Q_Rear:I

    .line 916
    sput v2, Q_Size:I

    .line 917
    sget v0, MAX_Q_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Q_Node:[Ljava/lang/String;

    .line 920
    sput-boolean v2, ILS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppsLaunchFreq(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-static {p0}, isInsert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 970
    sget-boolean v0, ILS_DEBUG:Z

    if-eqz v0, :cond_2e

    .line 971
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ILS: Launch App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, HARD_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_2e
    sget-boolean v0, HARD_FLAG:Z

    return v0
.end method

.method private static isInsert(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 926
    const-string v4, "launcher"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "googlequicksearchbox"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "contact"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1a
    move v2, v3

    .line 963
    :cond_1b
    :goto_1b
    return v2

    .line 930
    :cond_1c
    const/4 v1, 0x0

    .line 932
    .local v1, "nullCount":I
    sget v4, Q_Size:I

    sget v5, MAX_Q_SIZE:I

    if-ge v4, v5, :cond_29

    .line 933
    sget v4, Q_Size:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Q_Size:I

    .line 935
    :cond_29
    sget-object v4, Q_Node:[Ljava/lang/String;

    sget v5, Q_Front:I

    aput-object p0, v4, v5

    .line 937
    sget v0, Q_Rear:I

    .local v0, "i":I
    :cond_31
    :goto_31
    sget v4, Q_Front:I

    if-eq v0, v4, :cond_4c

    .line 938
    sget-object v4, Q_Node:[Ljava/lang/String;

    sget v5, Q_Front:I

    aget-object v4, v4, v5

    sget-object v5, Q_Node:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 939
    sget-object v4, Q_Node:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 940
    sput-boolean v3, HARD_FLAG:Z

    .line 954
    :cond_4c
    sget v4, Q_Front:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Q_Front:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_58

    .line 955
    sput v3, Q_Front:I

    .line 957
    :cond_58
    sget v4, Q_Size:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_1b

    .line 958
    sget v4, Q_Rear:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Q_Rear:I

    .line 959
    sget v4, Q_Rear:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_1b

    .line 960
    sput v3, Q_Rear:I

    goto :goto_1b

    .line 943
    :cond_6d
    sget-object v4, Q_Node:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-nez v4, :cond_7f

    .line 944
    sput-boolean v3, HARD_FLAG:Z

    .line 945
    add-int/lit8 v1, v1, 0x1

    .line 950
    :cond_77
    :goto_77
    add-int/lit8 v0, v0, 0x1

    sget v4, MAX_Q_SIZE:I

    if-ne v0, v4, :cond_31

    .line 951
    const/4 v0, 0x0

    goto :goto_31

    .line 947
    :cond_7f
    sget v4, Q_Size:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_77

    if-nez v1, :cond_77

    .line 948
    sput-boolean v2, HARD_FLAG:Z

    goto :goto_77
.end method
