.class final enum Lcom/android/launcher2/PagedView$TransitionEffect;
.super Ljava/lang/Enum;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransitionEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/PagedView$TransitionEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/PagedView$TransitionEffect;

.field public static final enum CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

.field public static final enum NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

.field public static final enum SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    new-instance v0, Lcom/android/launcher2/PagedView$TransitionEffect;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    new-instance v0, Lcom/android/launcher2/PagedView$TransitionEffect;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    new-instance v0, Lcom/android/launcher2/PagedView$TransitionEffect;

    const-string v1, "SPIRAL"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/PagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v1, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->$VALUES:[Lcom/android/launcher2/PagedView$TransitionEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/PagedView$TransitionEffect;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 217
    const-class v0, Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedView$TransitionEffect;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/PagedView$TransitionEffect;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->$VALUES:[Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v0}, [Lcom/android/launcher2/PagedView$TransitionEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/PagedView$TransitionEffect;

    return-object v0
.end method
