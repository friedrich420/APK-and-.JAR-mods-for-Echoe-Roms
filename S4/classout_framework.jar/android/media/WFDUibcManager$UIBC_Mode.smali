.class final enum Landroid/media/WFDUibcManager$UIBC_Mode;
.super Ljava/lang/Enum;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UIBC_Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/WFDUibcManager$UIBC_Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 87
    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "FORCE_VALUE"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 88
    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 89
    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "FULL_SCREEN"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 90
    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "PRESENTATION"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v1, NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v2

    sget-object v1, FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v3

    sget-object v1, CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v4

    sget-object v1, FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v5

    sget-object v1, PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Landroid/media/WFDUibcManager$UIBC_Mode;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/WFDUibcManager$UIBC_Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    return-object v0
.end method

.method public static values()[Landroid/media/WFDUibcManager$UIBC_Mode;
    .registers 1

    .prologue
    .line 85
    sget-object v0, $VALUES:[Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v0}, [Landroid/media/WFDUibcManager$UIBC_Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/WFDUibcManager$UIBC_Mode;

    return-object v0
.end method
