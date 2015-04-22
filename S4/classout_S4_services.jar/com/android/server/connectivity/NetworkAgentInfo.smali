.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"


# static fields
.field private static final EXPLICITLY_SELECTED_NETWORK_SCORE:I = 0x64

.field private static final EXTRA_FEATURE_ID:Ljava/lang/String; = "cneFeatureId"

.field private static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "cneFeatureParameter"

.field private static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "cneParameterValue"

.field private static final FEATURE_ID:I = 0x1

.field private static final FEATURE_OFF:I = 0x1

.field private static final FEATURE_ON:I = 0x2

.field private static final FEATURE_PARAM:I = 0x1

.field private static final UNVALIDATED_SCORE_PENALTY:I = 0x28


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public created:Z

.field private currentScore:I

.field private isCneWqeEnabled:Z

.field public knoxProfile:Z

.field public knoxProfileName:Ljava/lang/String;

.field public linkProperties:Landroid/net/LinkProperties;

.field private mContext:Landroid/content/Context;

.field public final messenger:Landroid/os/Messenger;

.field public network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkLingered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

.field public final networkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field public validated:Z


# direct methods
.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;)V
    .registers 15
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ac"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "info"    # Landroid/net/NetworkInfo;
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "score"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "handler"    # Landroid/os/Handler;
    .param p9, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, isCneWqeEnabled:Z

    .line 80
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, networkRequests:Landroid/util/SparseArray;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, networkLingered:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, messenger:Landroid/os/Messenger;

    .line 93
    iput-object p2, p0, asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, network:Landroid/net/Network;

    .line 95
    iput-object p3, p0, networkInfo:Landroid/net/NetworkInfo;

    .line 96
    iput-object p4, p0, linkProperties:Landroid/net/LinkProperties;

    .line 97
    iput-object p5, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 98
    iput p6, p0, currentScore:I

    .line 99
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v1, p7, p8, p0}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    iput-object v1, p0, networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    .line 100
    iput-object p9, p0, networkMisc:Landroid/net/NetworkMisc;

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, created:Z

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, validated:Z

    .line 103
    iput-object p7, p0, mContext:Landroid/content/Context;

    .line 104
    const-string/jumbo v1, "persist.cne.feature"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "val":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    .line 106
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/NetworkAgentInfo$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/NetworkAgentInfo$1;-><init>(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    :cond_50
    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    if-eqz v1, :cond_65

    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->knoxProfile:Z

    :goto_58
    iput-boolean v1, p0, knoxProfile:Z

    .line 122
    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    if-eqz v1, :cond_67

    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-object v1, v1, Landroid/net/NetworkMisc;->knoxProfileName:Ljava/lang/String;

    :goto_62
    iput-object v1, p0, knoxProfileName:Ljava/lang/String;

    .line 123
    return-void

    .line 121
    :cond_65
    const/4 v1, 0x0

    goto :goto_58

    .line 122
    :cond_67
    const/4 v1, 0x0

    goto :goto_62
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetworkAgentInfo;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, handlePrefChange(III)V

    return-void
.end method

.method private handlePrefChange(III)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "featureParam"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 173
    if-ne p1, v1, :cond_a

    if-ne p2, v1, :cond_a

    .line 174
    const/4 v0, 0x2

    if-ne p3, v0, :cond_b

    .line 175
    iput-boolean v1, p0, isCneWqeEnabled:Z

    .line 180
    :cond_a
    :goto_a
    return-void

    .line 176
    :cond_b
    if-ne p3, v1, :cond_a

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, isCneWqeEnabled:Z

    goto :goto_a
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)V
    .registers 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 126
    iget-object v0, p0, networkRequests:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public getCurrentScore()I
    .registers 4

    .prologue
    .line 141
    iget v0, p0, currentScore:I

    .line 142
    .local v0, "score":I
    iget-boolean v2, p0, isCneWqeEnabled:Z

    if-eqz v2, :cond_8

    move v1, v0

    .line 150
    .end local v0    # "score":I
    .local v1, "score":I
    :goto_7
    return v1

    .line 146
    .end local v1    # "score":I
    .restart local v0    # "score":I
    :cond_8
    if-gez v0, :cond_b

    const/4 v0, 0x0

    .line 148
    :cond_b
    iget-object v2, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v2, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v2, :cond_13

    const/16 v0, 0x64

    :cond_13
    move v1, v0

    .line 150
    .end local v0    # "score":I
    .restart local v1    # "score":I
    goto :goto_7
.end method

.method public isVPN()Z
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, network:Landroid/net/Network;

    if-nez v0, :cond_40

    const-string v0, "null"

    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    iget-object v0, p0, network:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public setCurrentScore(I)V
    .registers 2
    .param p1, "newScore"    # I

    .prologue
    .line 154
    iput p1, p0, currentScore:I

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "validated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, validated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
