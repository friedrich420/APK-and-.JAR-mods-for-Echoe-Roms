.class public final enum Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;
.super Ljava/lang/Enum;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/storage/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

.field public static final enum BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

.field public static final enum INTEGER:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

.field public static final enum NUMERIC:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

.field public static final enum REAL:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

.field public static final enum TEXT:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, INTEGER:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, TEXT:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, NUMERIC:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    const-string v1, "BLOB"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, REAL:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    sget-object v1, INTEGER:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, TEXT:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, NUMERIC:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, REAL:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;
    .registers 1

    .prologue
    .line 37
    sget-object v0, $VALUES:[Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    return-object v0
.end method
