.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;
.super Landroid/os/Handler;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 310
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    .local v0, queryWeather:Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 374
    .end local v0           #queryWeather:Ljava/lang/Thread;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/weather/WeatherInfo;

    .line 375
    .local v1, w:Lcom/android/internal/util/weather/WeatherInfo;
    if-eqz v1, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 377
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/util/weather/WeatherInfo;)V

    .line 378
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1002(Lcom/android/internal/util/weather/WeatherInfo;)Lcom/android/internal/util/weather/WeatherInfo;

    goto :goto_0

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWeatherRefreshing:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 381
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000()Lcom/android/internal/util/weather/WeatherInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/util/weather/WeatherInfo;->temp:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setNoWeatherData()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1000()Lcom/android/internal/util/weather/WeatherInfo;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setWeatherData(Lcom/android/internal/util/weather/WeatherInfo;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/util/weather/WeatherInfo;)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
