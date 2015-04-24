.class Lcom/sec/android/provider/logsprovider/XmlBackup$1;
.super Ljava/lang/Object;
.source "XmlBackup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/provider/logsprovider/XmlBackup;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/provider/logsprovider/XmlBackup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/provider/logsprovider/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->this$0:Lcom/sec/android/provider/logsprovider/XmlBackup;

    iput-object p2, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$saveKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->this$0:Lcom/sec/android/provider/logsprovider/XmlBackup;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$filepath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$source:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;->val$saveKey:Ljava/lang/String;

    # invokes: Lcom/sec/android/provider/logsprovider/XmlBackup;->RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/provider/logsprovider/XmlBackup;->access$000(Lcom/sec/android/provider/logsprovider/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
