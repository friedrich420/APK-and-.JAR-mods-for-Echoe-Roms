.class public final enum Landroid/view/ViewDebug$HierarchyTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HierarchyTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/ViewDebug$HierarchyTraceType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum BUILD_CACHE:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum DRAW:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE_CHILD:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum INVALIDATE_CHILD_IN_PARENT:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum ON_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum ON_MEASURE:Landroid/view/ViewDebug$HierarchyTraceType;

.field public static final enum REQUEST_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 372
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "INVALIDATE"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, INVALIDATE:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 373
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "INVALIDATE_CHILD"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, INVALIDATE_CHILD:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 374
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "INVALIDATE_CHILD_IN_PARENT"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, INVALIDATE_CHILD_IN_PARENT:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 375
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "REQUEST_LAYOUT"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, REQUEST_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 376
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "ON_LAYOUT"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, ON_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 377
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "ON_MEASURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, ON_MEASURE:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 378
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "DRAW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DRAW:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 379
    new-instance v0, Landroid/view/ViewDebug$HierarchyTraceType;

    const-string v1, "BUILD_CACHE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, BUILD_CACHE:Landroid/view/ViewDebug$HierarchyTraceType;

    .line 370
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/ViewDebug$HierarchyTraceType;

    sget-object v1, INVALIDATE:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v3

    sget-object v1, INVALIDATE_CHILD:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v4

    sget-object v1, INVALIDATE_CHILD_IN_PARENT:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v5

    sget-object v1, REQUEST_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v6

    sget-object v1, ON_LAYOUT:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, ON_MEASURE:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, DRAW:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, BUILD_CACHE:Landroid/view/ViewDebug$HierarchyTraceType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Landroid/view/ViewDebug$HierarchyTraceType;

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
    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$HierarchyTraceType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 370
    const-class v0, Landroid/view/ViewDebug$HierarchyTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/ViewDebug$HierarchyTraceType;

    return-object v0
.end method

.method public static values()[Landroid/view/ViewDebug$HierarchyTraceType;
    .registers 1

    .prologue
    .line 370
    sget-object v0, $VALUES:[Landroid/view/ViewDebug$HierarchyTraceType;

    invoke-virtual {v0}, [Landroid/view/ViewDebug$HierarchyTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewDebug$HierarchyTraceType;

    return-object v0
.end method
