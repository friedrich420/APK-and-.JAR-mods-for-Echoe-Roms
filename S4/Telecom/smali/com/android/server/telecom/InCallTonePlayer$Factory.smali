.class public final Lcom/android/server/telecom/InCallTonePlayer$Factory;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/InCallTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallAudioManager;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/telecom/InCallTonePlayer$Factory;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 45
    return-void
.end method


# virtual methods
.method public final createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/android/server/telecom/InCallTonePlayer;

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer$Factory;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/telecom/InCallTonePlayer;-><init>(ILcom/android/server/telecom/CallAudioManager;B)V

    return-object v0
.end method
