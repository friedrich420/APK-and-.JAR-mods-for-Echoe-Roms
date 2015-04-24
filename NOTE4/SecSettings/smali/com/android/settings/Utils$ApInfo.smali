.class public Lcom/android/settings/Utils$ApInfo;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2263
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 2264
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/settings/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 2265
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;

    .prologue
    .line 2267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2268
    iput-object p1, p0, Lcom/android/settings/Utils$ApInfo;->SSID:Ljava/lang/String;

    .line 2269
    iput-object p2, p0, Lcom/android/settings/Utils$ApInfo;->securityType:Ljava/lang/String;

    .line 2270
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/settings/Utils$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/android/settings/Utils$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
