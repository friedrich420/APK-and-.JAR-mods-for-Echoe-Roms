.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutingChangeValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .registers 2

    .prologue
    .line 305
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .prologue
    .line 305
    invoke-direct {p0, p1}, <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)Z
    .registers 5
    .param p1, "params"    # [B

    .prologue
    const/4 v0, 0x0

    .line 308
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 311
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$300(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$300(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
