.class public final enum Lcom/android/internal/util/NVStore$datatype;
.super Ljava/lang/Enum;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NVStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "datatype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/util/NVStore$datatype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/util/NVStore$datatype;

.field public static final enum All:Lcom/android/internal/util/NVStore$datatype;

.field public static final enum ENABLE_PHLOCK_FIRST:Lcom/android/internal/util/NVStore$datatype;

.field public static final enum PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

.field public static final enum PHPWD:Lcom/android/internal/util/NVStore$datatype;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/android/internal/util/NVStore$datatype;

    const-string v1, "All"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, All:Lcom/android/internal/util/NVStore$datatype;

    .line 55
    new-instance v0, Lcom/android/internal/util/NVStore$datatype;

    const-string v1, "PHPWD"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, PHPWD:Lcom/android/internal/util/NVStore$datatype;

    .line 56
    new-instance v0, Lcom/android/internal/util/NVStore$datatype;

    const-string v1, "PHLOCK_STATE"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    .line 57
    new-instance v0, Lcom/android/internal/util/NVStore$datatype;

    const-string v1, "ENABLE_PHLOCK_FIRST"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, ENABLE_PHLOCK_FIRST:Lcom/android/internal/util/NVStore$datatype;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/util/NVStore$datatype;

    sget-object v1, All:Lcom/android/internal/util/NVStore$datatype;

    aput-object v1, v0, v2

    sget-object v1, PHPWD:Lcom/android/internal/util/NVStore$datatype;

    aput-object v1, v0, v3

    sget-object v1, PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    aput-object v1, v0, v4

    sget-object v1, ENABLE_PHLOCK_FIRST:Lcom/android/internal/util/NVStore$datatype;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/android/internal/util/NVStore$datatype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/util/NVStore$datatype;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/android/internal/util/NVStore$datatype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/NVStore$datatype;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/util/NVStore$datatype;
    .registers 1

    .prologue
    .line 53
    sget-object v0, $VALUES:[Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0}, [Lcom/android/internal/util/NVStore$datatype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/util/NVStore$datatype;

    return-object v0
.end method
