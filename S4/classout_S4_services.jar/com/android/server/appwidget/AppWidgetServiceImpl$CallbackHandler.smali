.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_PROVIDERS_CHANGED:I = 0x3

.field public static final MSG_NOTIFY_PROVIDER_CHANGED:I = 0x2

.field public static final MSG_NOTIFY_UPDATE_APP_WIDGET:I = 0x1

.field public static final MSG_NOTIFY_VIEW_DATA_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3130
    iput-object p1, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3131
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3136
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_6a

    .line 3179
    :goto_5
    return-void

    .line 3138
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3139
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3140
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3141
    .local v2, "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/widget/RemoteViews;

    .line 3142
    .local v6, "views":Landroid/widget/RemoteViews;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3143
    .local v0, "appWidgetId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3145
    iget-object v7, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V
    invoke-static {v7, v3, v2, v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;)V

    goto :goto_5

    .line 3149
    .end local v0    # "appWidgetId":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v6    # "views":Landroid/widget/RemoteViews;
    :pswitch_21
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3150
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3151
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3152
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3153
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3154
    .restart local v0    # "appWidgetId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3156
    iget-object v7, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V
    invoke-static {v7, v3, v2, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_5

    .line 3160
    .end local v0    # "appWidgetId":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_3c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3161
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3162
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3163
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3165
    iget-object v7, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    invoke-static {v7, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    goto :goto_5

    .line 3169
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :pswitch_51
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3170
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3171
    .restart local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 3172
    .restart local v2    # "callbacks":Lcom/android/internal/appwidget/IAppWidgetHost;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 3173
    .restart local v0    # "appWidgetId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3174
    .local v5, "viewId":I
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3176
    iget-object v7, p0, this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V
    invoke-static {v7, v3, v2, v0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;II)V

    goto :goto_5

    .line 3136
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_21
        :pswitch_3c
        :pswitch_51
    .end packed-switch
.end method
