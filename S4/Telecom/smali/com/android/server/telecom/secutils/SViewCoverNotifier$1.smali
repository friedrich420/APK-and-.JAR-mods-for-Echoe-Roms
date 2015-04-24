.class final Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;
.super Landroid/content/AsyncQueryHandler;
.source "SViewCoverNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall$6409b06e(Ljava/lang/String;Ljava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 79
    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryComplete()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz p3, :cond_1

    .line 82
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 86
    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onQueryComplete : callID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " creationTimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallDate:J
    invoke-static {v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missedCallCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I
    invoke-static {v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$200(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$400(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/EcidContact;->getContactName(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$502(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ecid name added as "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallDate:J
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I
    invoke-static {v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$200(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$600(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    return-void

    .line 103
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$800()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallDate:J
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I
    invoke-static {v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$200(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$600(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0
.end method
