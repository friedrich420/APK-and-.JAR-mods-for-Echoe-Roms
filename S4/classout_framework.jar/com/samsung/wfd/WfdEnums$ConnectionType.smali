.class public final enum Lcom/samsung/wfd/WfdEnums$ConnectionType;
.super Ljava/lang/Enum;
.source "WfdEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wfd/WfdEnums$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wfd/WfdEnums$ConnectionType;

.field public static final enum TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

.field public static final enum UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 619
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ConnectionType;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 620
    new-instance v0, Lcom/samsung/wfd/WfdEnums$ConnectionType;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    .line 618
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/wfd/WfdEnums$ConnectionType;

    sget-object v1, UDP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, TCP:Lcom/samsung/wfd/WfdEnums$ConnectionType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/samsung/wfd/WfdEnums$ConnectionType;

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
    .line 618
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wfd/WfdEnums$ConnectionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 618
    const-class v0, Lcom/samsung/wfd/WfdEnums$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdEnums$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wfd/WfdEnums$ConnectionType;
    .registers 1

    .prologue
    .line 618
    sget-object v0, $VALUES:[Lcom/samsung/wfd/WfdEnums$ConnectionType;

    invoke-virtual {v0}, [Lcom/samsung/wfd/WfdEnums$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wfd/WfdEnums$ConnectionType;

    return-object v0
.end method
