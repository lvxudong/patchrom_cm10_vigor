.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb


# instance fields
.field private currentMask:I

.field volatile currentValue:I

.field private duration:I

.field volatile endSensorValue:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field volatile startSensorValue:I

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    .line 2273
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2274
    iput-object p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    .line 2275
    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2259
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2259
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    return v0
.end method

.method private animateInternal(IZI)V
    .locals 12
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    .line 2347
    monitor-enter p0

    .line 2348
    :try_start_0
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v8, v9, :cond_3

    .line 2349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2350
    .local v5, now:J
    iget-wide v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    sub-long v8, v5, v8

    long-to-int v1, v8

    .line 2352
    .local v1, elapsed:I
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    if-ge v1, v8, :cond_5

    .line 2353
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    sub-int v0, v8, v9

    .line 2354
    .local v0, delta:I
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    mul-int v9, v0, v1

    iget v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v9, v10

    add-int v4, v8, v9

    .line 2355
    .local v4, newValue:I
    const/4 v8, 0x0

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2356
    const/16 v8, 0xff

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2358
    if-lez p3, :cond_0

    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v4, v8, :cond_0

    .line 2359
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v7, v8, v9

    .line 2360
    .local v7, timePerStep:I
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    sub-int/2addr v8, v1

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2361
    if-gez v0, :cond_4

    const/4 v8, -0x1

    :goto_0
    add-int/2addr v4, v8

    .line 2364
    .end local v7           #timePerStep:I
    :cond_0
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    sub-int v0, v8, v9

    .line 2365
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    mul-int v10, v0, v1

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v10, v11

    add-int/2addr v9, v10

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$5702(Lcom/android/server/PowerManagerService;I)I

    .line 2383
    .end local v0           #delta:I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHeadless:Z
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v8, v8, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v8, :cond_2

    .line 2384
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 2389
    .local v2, mode:I
    :goto_2
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v2, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2392
    .end local v2           #mode:I
    :cond_2
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2394
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2396
    .local v3, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    int-to-long v9, p3

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2398
    .end local v1           #elapsed:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #newValue:I
    .end local v5           #now:J
    :cond_3
    monitor-exit p0

    .line 2399
    return-void

    .line 2361
    .restart local v0       #delta:I
    .restart local v1       #elapsed:I
    .restart local v4       #newValue:I
    .restart local v5       #now:J
    .restart local v7       #timePerStep:I
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 2367
    .end local v0           #delta:I
    .end local v4           #newValue:I
    .end local v7           #timePerStep:I
    :cond_5
    iget v4, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 2368
    .restart local v4       #newValue:I
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$5702(Lcom/android/server/PowerManagerService;I)I

    .line 2369
    iget v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-lez v8, :cond_1

    .line 2370
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v8, v9}, Lcom/android/server/PowerManagerService;->access$4702(Lcom/android/server/PowerManagerService;Z)Z

    goto :goto_1

    .line 2398
    .end local v1           #elapsed:I
    .end local v4           #newValue:I
    .end local v5           #now:J
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2384
    .restart local v1       #elapsed:I
    .restart local v4       #newValue:I
    .restart local v5       #now:J
    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_2
.end method


# virtual methods
.method public animateTo(III)V
    .locals 1
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 2414
    return-void
.end method

.method public animateTo(IIII)V
    .locals 5
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2417
    monitor-enter p0

    .line 2418
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_2

    .line 2420
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    .line 2421
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2423
    :cond_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 2424
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2426
    :cond_1
    monitor-exit p0

    .line 2471
    :goto_0
    return-void

    .line 2428
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    xor-int/2addr v3, p3

    if-eqz v3, :cond_3

    .line 2430
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 2432
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2434
    const/4 p4, 0x0

    .line 2435
    if-lez p1, :cond_4

    .line 2436
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$4702(Lcom/android/server/PowerManagerService;Z)Z

    .line 2439
    :cond_4
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    .line 2440
    iput p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 2441
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    .line 2442
    iput p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    .line 2443
    iput p3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    .line 2444
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v3

    int-to-float v4, p4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 2445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    .line 2456
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-eq p1, v3, :cond_6

    .line 2457
    and-int/lit8 v3, p3, 0x3

    if-eqz v3, :cond_7

    move v0, v1

    .line 2458
    .local v0, doScreenAnim:Z
    :goto_1
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v3, :cond_8

    .line 2459
    .local v1, turningOff:Z
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 2461
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2462
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;I)I

    .line 2463
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 2465
    :cond_5
    if-eqz v0, :cond_6

    .line 2466
    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    .line 2470
    .end local v0           #doScreenAnim:Z
    .end local v1           #turningOff:Z
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    move v0, v2

    .line 2457
    goto :goto_1

    .restart local v0       #doScreenAnim:Z
    :cond_8
    move v1, v2

    .line 2458
    goto :goto_2
.end method

.method public cancelAnimation()V
    .locals 3

    .prologue
    .line 2486
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2487
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "string"

    .prologue
    .line 2402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2410
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 2474
    monitor-enter p0

    .line 2475
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit p0

    return v0

    .line 2476
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 2480
    monitor-enter p0

    .line 2481
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2482
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$4502(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2340
    monitor-enter p0

    .line 2341
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5602(Lcom/android/server/PowerManagerService;Z)Z

    .line 2342
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2343
    monitor-exit p0

    .line 2344
    return-void

    .line 2343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
