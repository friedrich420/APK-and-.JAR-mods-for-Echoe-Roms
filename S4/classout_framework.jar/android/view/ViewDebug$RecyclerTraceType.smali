.class public final enum Landroid/view/ViewDebug$RecyclerTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecyclerTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/ViewDebug$RecyclerTraceType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

.field public static final enum RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 387
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "NEW_VIEW"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 388
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "BIND_VIEW"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 389
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "RECYCLE_FROM_ACTIVE_HEAP"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 390
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "RECYCLE_FROM_SCRAP_HEAP"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 391
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_TO_SCRAP_HEAP"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 392
    new-instance v0, Landroid/view/ViewDebug$RecyclerTraceType;

    const-string v1, "MOVE_FROM_ACTIVE_TO_SCRAP_HEAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    .line 385
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/ViewDebug$RecyclerTraceType;

    sget-object v1, NEW_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v3

    sget-object v1, BIND_VIEW:Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v4

    sget-object v1, RECYCLE_FROM_ACTIVE_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v5

    sget-object v1, RECYCLE_FROM_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v6

    sget-object v1, MOVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, MOVE_FROM_ACTIVE_TO_SCRAP_HEAP:Landroid/view/ViewDebug$RecyclerTraceType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

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
    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$RecyclerTraceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 385
    const-class v0, Landroid/view/ViewDebug$RecyclerTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$RecyclerTraceType;

    return-object v0
.end method

.method public static values()[Landroid/view/ViewDebug$RecyclerTraceType;
    .registers 1

    .prologue
    .line 385
    sget-object v0, $VALUES:[Landroid/view/ViewDebug$RecyclerTraceType;

    invoke-virtual {v0}, [Landroid/view/ViewDebug$RecyclerTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewDebug$RecyclerTraceType;

    return-object v0
.end method
