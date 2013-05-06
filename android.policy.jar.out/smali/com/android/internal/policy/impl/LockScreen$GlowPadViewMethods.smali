.class Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadViewMethods"
.end annotation


# instance fields
.field private final mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIsScreenLarge:Z

.field private mStoredTargets:[Ljava/lang/String;

.field private mTargetOffset:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter
    .parameter "glowPadView"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 283
    return-void
.end method

.method private getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 13
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 295
    .local v10, res:Landroid/content/res/Resources;
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 296
    .local v9, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v7, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 297
    .local v7, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const v1, 0x1080312

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    .line 298
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v9, v12

    .line 299
    const/4 v12, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    .line 300
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p4, :cond_0

    const v1, 0x106000d

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v7, v12

    .line 301
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 302
    .local v11, states:Landroid/graphics/drawable/StateListDrawable;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 303
    .local v8, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 304
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 305
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 306
    .local v6, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 307
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 308
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v11, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 309
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 310
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v11, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 311
    return-object v11

    .end local v6           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    move-object v1, p2

    .line 300
    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 505
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 511
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 548
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method public isScreenLarge()Z
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 288
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 290
    .local v0, isScreenLarge:Z
    :goto_0
    return v0

    .line 288
    .end local v0           #isScreenLarge:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetPresent(I)Z
    .locals 2
    .parameter "resId"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 453
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 521
    if-eqz p2, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 524
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 457
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "target"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 460
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v2

    .line 462
    .local v2, resId:I
    sparse-switch v2, :sswitch_data_0

    .line 502
    .end local v2           #resId:I
    :cond_0
    :goto_0
    return-void

    .line 464
    .restart local v2       #resId:I
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 465
    .local v0, assistIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 466
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 470
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 468
    :cond_1
    const-string v3, "LockScreen"

    const-string v4, "Failed to get intent for assist activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    .end local v0           #assistIntent:Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 475
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 479
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 480
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 485
    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 489
    .end local v2           #resId:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$1400(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 490
    .local v1, isLand:Z
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    if-ne p2, v4, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 491
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 493
    :cond_6
    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p2, v3

    .line 494
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    array-length v3, v3

    if-ge p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 496
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 497
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 462
    :sswitch_data_0
    .sparse-switch
        0x1080294 -> :sswitch_0
        0x10802eb -> :sswitch_1
        0x1080325 -> :sswitch_2
        0x1080332 -> :sswitch_3
        0x1080335 -> :sswitch_3
    .end sparse-switch
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 536
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 532
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 540
    return-void
.end method

.method public updateResources()V
    .locals 38

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_targets"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 321
    .local v34, storedVal:Ljava/lang/String;
    if-nez v34, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mEnableRingSilenceFallback:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v32, 0x1070009

    .line 330
    .local v32, resId:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v6

    move/from16 v0, v32

    if-eq v6, v0, :cond_0

    .line 331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 334
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v23

    .line 336
    .local v23, intent:Landroid/content/Intent;
    if-eqz v23, :cond_1

    .line 340
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 341
    .local v14, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v7, "com.android.systemui.action_assist_icon_google"

    const v8, 0x1080294

    invoke-virtual {v6, v14, v7, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v30

    .line 345
    .local v30, replaced:Z
    if-nez v30, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v7, "com.android.systemui.action_assist_icon"

    const v8, 0x1080294

    invoke-virtual {v6, v14, v7, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 348
    const-string v6, "LockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t grab icon from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v14           #component:Landroid/content/ComponentName;
    .end local v23           #intent:Landroid/content/Intent;
    .end local v30           #replaced:Z
    :cond_1
    const v7, 0x10802eb

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->setEnabled(IZ)V

    .line 353
    const v7, 0x1080294

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->setEnabled(IZ)V

    .line 449
    .end local v32           #resId:I
    :goto_3
    return-void

    .line 325
    :cond_2
    const v32, 0x107000c

    goto/16 :goto_0

    .line 328
    :cond_3
    const v32, 0x107000e

    .restart local v32       #resId:I
    goto/16 :goto_0

    .line 352
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 353
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 355
    .end local v32           #resId:I
    :cond_6
    const-string v6, "\\|"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->isScreenLarge()Z

    move-result v6

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    .line 357
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v33, storedDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 359
    .local v31, res:Landroid/content/res/Resources;
    const v6, 0x1050055

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    .line 360
    .local v35, targetInset:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 361
    .local v26, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1400(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    const/16 v24, 0x1

    .line 362
    .local v24, isLandscape:Z
    :goto_4
    const v6, 0x108032f

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 363
    .local v5, blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 365
    .local v4, activeBack:Landroid/graphics/drawable/InsetDrawable;
    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mIsScreenLarge:Z

    if-nez v6, :cond_d

    const/4 v6, 0x2

    :goto_5
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    .line 366
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 367
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_7
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v7, 0x1080332

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const/16 v20, 0x0

    .local v20, i:I
    :goto_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mTargetOffset:I

    rsub-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v20

    if-ge v0, v6, :cond_16

    .line 373
    move/from16 v36, v35

    .line 374
    .local v36, tmpInset:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_15

    .line 375
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mStoredTargets:[Ljava/lang/String;

    aget-object v37, v6, v20

    .line 376
    .local v37, uri:Ljava/lang/String;
    const-string v6, "empty"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 378
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v37

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v22

    .line 379
    .local v22, in:Landroid/content/Intent;
    const/16 v18, 0x0

    .line 380
    .local v18, front:Landroid/graphics/drawable/Drawable;
    move-object v11, v4

    .line 381
    .local v11, back:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 382
    .local v19, frontBlank:Z
    const-string v6, "icon_file"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 383
    const-string v6, "icon_file"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 384
    .local v17, fSource:Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 385
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v16, fPath:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 387
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 418
    .end local v16           #fPath:Ljava/io/File;
    .end local v17           #fSource:Ljava/lang/String;
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_7
    if-eqz v18, :cond_9

    if-nez v11, :cond_a

    .line 419
    :cond_9
    const/4 v6, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 420
    .local v10, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v10, :cond_10

    .line 421
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 426
    .end local v10           #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_a
    :goto_8
    new-instance v25, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v36

    move/from16 v3, v19

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 427
    .local v25, nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 428
    .local v13, compName:Landroid/content/ComponentName;
    if-eqz v13, :cond_b

    .line 429
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 430
    .local v12, cls:Ljava/lang/String;
    const-string v6, "com.android.camera.CameraLauncher"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 431
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 436
    .end local v12           #cls:Ljava/lang/String;
    :cond_b
    :goto_a
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v11           #back:Landroid/graphics/drawable/Drawable;
    .end local v13           #compName:Landroid/content/ComponentName;
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v19           #frontBlank:Z
    .end local v22           #in:Landroid/content/Intent;
    .end local v25           #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v37           #uri:Ljava/lang/String;
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_6

    .line 361
    .end local v4           #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .end local v5           #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .end local v20           #i:I
    .end local v24           #isLandscape:Z
    .end local v36           #tmpInset:I
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 365
    .restart local v4       #activeBack:Landroid/graphics/drawable/InsetDrawable;
    .restart local v5       #blankActiveDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v24       #isLandscape:Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 390
    .restart local v11       #back:Landroid/graphics/drawable/Drawable;
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    .restart local v19       #frontBlank:Z
    .restart local v20       #i:I
    .restart local v22       #in:Landroid/content/Intent;
    .restart local v36       #tmpInset:I
    .restart local v37       #uri:Ljava/lang/String;
    :cond_e
    const-string v6, "icon_resource"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 391
    const-string v6, "icon_resource"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 392
    .local v29, rSource:Ljava/lang/String;
    const-string v6, "icon_package"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 393
    .local v28, rPackage:Ljava/lang/String;
    if-eqz v29, :cond_8

    .line 394
    if-eqz v28, :cond_f

    .line 396
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v27

    .line 397
    .local v27, rContext:Landroid/content/Context;
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 398
    .local v21, id:I
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 399
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "_normal"

    const-string v8, "_activated"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 401
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 402
    const/16 v36, 0x0

    .line 403
    const/16 v19, 0x1

    goto/16 :goto_7

    .line 404
    .end local v21           #id:I
    .end local v27           #rContext:Landroid/content/Context;
    :catch_0
    move-exception v15

    .line 405
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 437
    .end local v11           #back:Landroid/graphics/drawable/Drawable;
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v19           #frontBlank:Z
    .end local v22           #in:Landroid/content/Intent;
    .end local v28           #rPackage:Ljava/lang/String;
    .end local v29           #rSource:Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 438
    .local v15, e:Ljava/lang/Exception;
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 406
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v11       #back:Landroid/graphics/drawable/Drawable;
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    .restart local v19       #frontBlank:Z
    .restart local v22       #in:Landroid/content/Intent;
    .restart local v28       #rPackage:Ljava/lang/String;
    .restart local v29       #rSource:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 407
    .local v15, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v15}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_7

    .line 410
    .end local v15           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_f
    const-string v6, "drawable"

    const-string v7, "android"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 411
    const-string v6, "_normal"

    const-string v7, "_activated"

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "android"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 413
    const/16 v36, 0x0

    .line 414
    const/16 v19, 0x1

    goto/16 :goto_7

    .line 423
    .end local v28           #rPackage:Ljava/lang/String;
    .end local v29           #rSource:Ljava/lang/String;
    .restart local v10       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_10
    const v6, 0x1080093

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    goto/16 :goto_8

    .line 431
    .end local v10           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #cls:Ljava/lang/String;
    .restart local v13       #compName:Landroid/content/ComponentName;
    .restart local v25       #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 432
    :cond_12
    const-string v6, "SearchActivity"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v6

    if-nez v6, :cond_13

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_a

    :cond_13
    const/4 v6, 0x0

    goto :goto_c

    .line 441
    .end local v11           #back:Landroid/graphics/drawable/Drawable;
    .end local v12           #cls:Ljava/lang/String;
    .end local v13           #compName:Landroid/content/ComponentName;
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v19           #frontBlank:Z
    .end local v22           #in:Landroid/content/Intent;
    .end local v25           #nDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_14
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 444
    .end local v37           #uri:Ljava/lang/String;
    :cond_15
    new-instance v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-direct {v6, v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 447
    .end local v36           #tmpInset:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method
