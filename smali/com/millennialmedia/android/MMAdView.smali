.class public final Lcom/millennialmedia/android/MMAdView;
.super Lcom/millennialmedia/android/MMLayout;
.source "MMAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$BannerBounds;,
        Lcom/millennialmedia/android/MMAdView$ResizeView;,
        Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;,
        Lcom/millennialmedia/android/MMAdView$MMAdViewWebViewClientListener;
    }
.end annotation


# static fields
.field static final DEFAULT_RESIZE_PARAM_VALUES:I = -0x32

.field private static final TAG:Ljava/lang/String; = "MMAdView"

.field public static final TRANSITION_DOWN:I = 0x3

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_NONE:I = 0x0

.field public static final TRANSITION_RANDOM:I = 0x4

.field public static final TRANSITION_UP:I = 0x2


# instance fields
.field height:I

.field oldHeight:I

.field oldWidth:I

.field refreshAnimationimageView:Landroid/widget/ImageView;

.field transitionType:I

.field view:Lcom/millennialmedia/android/MMAdView$ResizeView;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x32

    .line 65
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 48
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 49
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 531
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 532
    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 66
    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    .line 67
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v5, -0x32

    const/4 v6, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v4, 0x4

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 48
    iput v6, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 49
    iput v6, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 531
    iput v5, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 532
    iput v5, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 94
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_4

    .line 95
    const-string v4, "MMAdView"

    const-string v5, "Creating MMAdView from XML layout."

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v4, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v4, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    .line 97
    if-eqz p2, :cond_3

    .line 98
    const-string v1, "http://millennialmedia.com/android/schema"

    .line 99
    .local v1, namespace:Ljava/lang/String;
    const-string v4, "apid"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v5, "ignoreDensityScaling"

    invoke-interface {p2, v1, v5, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 102
    const-string v4, "height"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, heightIn:Ljava/lang/String;
    const-string v4, "width"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, widthIn:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 108
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->width:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "age"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->age:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "children"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->children:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "education"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->education:Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "ethnicity"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->ethnicity:Ljava/lang/String;

    .line 127
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "gender"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->gender:Ljava/lang/String;

    .line 129
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "income"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->income:Ljava/lang/String;

    .line 131
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "keywords"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->keywords:Ljava/lang/String;

    .line 133
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "marital"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->marital:Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "politics"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->politics:Ljava/lang/String;

    .line 137
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "vendor"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->vendor:Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    const-string v5, "zip"

    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/millennialmedia/android/MMRequest;->zip:Ljava/lang/String;

    .line 142
    :cond_2
    const-string v4, "goalId"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;

    .line 144
    .end local v0           #heightIn:Ljava/lang/String;
    .end local v1           #namespace:Ljava/lang/String;
    .end local v3           #widthIn:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/millennialmedia/android/MMAdImpl;->xmlLayout:Z

    .line 145
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 149
    :goto_1
    return-void

    .line 111
    .restart local v0       #heightIn:Ljava/lang/String;
    .restart local v1       #namespace:Ljava/lang/String;
    .restart local v3       #widthIn:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 112
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v4, "MMAdView"

    const-string v5, "Error reading attrs file from xml"

    invoke-static {v4, v5, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 147
    .end local v0           #heightIn:Ljava/lang/String;
    .end local v1           #namespace:Ljava/lang/String;
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v3           #widthIn:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->initEclipseAd(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized attachToWindow(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    .line 586
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 587
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 588
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 589
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 590
    .local v5, win:Landroid/view/Window;
    if-eqz v5, :cond_0

    .line 591
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 592
    .local v3, decorView:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 593
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 594
    .local v4, group:Landroid/view/ViewGroup;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #decorView:Landroid/view/View;
    .end local v4           #group:Landroid/view/ViewGroup;
    .end local v5           #win:Landroid/view/Window;
    :cond_0
    monitor-exit p0

    return-void

    .line 585
    .end local v2           #context:Landroid/content/Context;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private callSetTranslationX(I)V
    .locals 7
    .parameter "translationX"

    .prologue
    .line 680
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setTranslationX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 682
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MMAdView"

    const-string v3, "Unable to call setTranslationX"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private callSetTranslationY(I)V
    .locals 7
    .parameter "translationY"

    .prologue
    .line 691
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setTranslationY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 693
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MMAdView"

    const-string v3, "Unable to call setTranslationY"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized detachFromParent(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 572
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 574
    .local v2, parent:Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 575
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 576
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 577
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #parent:Landroid/view/ViewParent;
    :cond_0
    monitor-exit p0

    return-void

    .line 572
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAdInternal()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->requestAd()V

    .line 509
    :cond_0
    return-void
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 716
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 165
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    const-string v1, "b"

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 166
    invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V

    .line 171
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method

.method private initEclipseAd(Landroid/content/Context;)V
    .locals 16
    .parameter "context"

    .prologue
    .line 184
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v10, logoForXML:Landroid/widget/ImageView;
    const-string v8, "http://images.millennialmedia.com/9513/192134.gif"

    .line 186
    .local v8, imageUrl:Ljava/lang/String;
    const/4 v9, 0x0

    .line 187
    .local v9, is:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 189
    .local v11, out:Ljava/io/OutputStream;
    :try_start_0
    const-string v13, "java.io.tmpdir"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, dir:Ljava/lang/String;
    if-eqz v5, :cond_0

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 191
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    :cond_0
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "millenial355jns6u3l1nmedia.png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 196
    new-instance v13, Ljava/net/URL;

    const-string v14, "http://images.millennialmedia.com/9513/192134.gif"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 198
    .local v4, conn:Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 199
    const/16 v13, 0x2710

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 202
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 203
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 204
    .end local v11           #out:Ljava/io/OutputStream;
    .local v12, out:Ljava/io/OutputStream;
    const/16 v13, 0x400

    :try_start_1
    new-array v2, v13, [B

    .line 205
    .local v2, buffer:[B
    const/4 v3, 0x0

    .line 206
    .local v3, bytesRead:I
    :goto_0
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 207
    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 215
    .end local v2           #buffer:[B
    .end local v3           #bytesRead:I
    :catch_0
    move-exception v6

    move-object v11, v12

    .line 216
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .end local v5           #dir:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    .end local v12           #out:Ljava/io/OutputStream;
    .local v6, e:Ljava/lang/Exception;
    .restart local v11       #out:Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v13, "MMAdView"

    const-string v14, "Error with eclipse xml image display: "

    invoke-static {v13, v14, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    if-eqz v9, :cond_1

    .line 220
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 222
    :cond_1
    if-eqz v11, :cond_2

    .line 223
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 229
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    .line 230
    return-void

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #bytesRead:I
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    .restart local v5       #dir:Ljava/lang/String;
    .restart local v7       #file:Ljava/io/File;
    .restart local v12       #out:Ljava/io/OutputStream;
    :cond_3
    move-object v11, v12

    .line 210
    .end local v2           #buffer:[B
    .end local v3           #bytesRead:I
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_5

    if-eqz v1, :cond_5

    .line 213
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 219
    :cond_5
    if-eqz v9, :cond_6

    .line 220
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 222
    :cond_6
    if-eqz v11, :cond_2

    .line 223
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 225
    :catch_1
    move-exception v6

    .line 226
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v13, "MMAdView"

    const-string v14, "Error closing file"

    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #dir:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    :goto_3
    invoke-static {v13, v14, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 218
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 219
    :goto_4
    if-eqz v9, :cond_7

    .line 220
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 222
    :cond_7
    if-eqz v11, :cond_8

    .line 223
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 218
    :cond_8
    :goto_5
    throw v13

    .line 225
    :catch_2
    move-exception v6

    .line 226
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "MMAdView"

    const-string v15, "Error closing file"

    invoke-static {v14, v15, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 225
    :catch_3
    move-exception v6

    .line 226
    const-string v13, "MMAdView"

    const-string v14, "Error closing file"

    goto :goto_3

    .line 218
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    .restart local v5       #dir:Ljava/lang/String;
    .restart local v7       #file:Ljava/io/File;
    .restart local v12       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 215
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .end local v5           #dir:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method private setUnresizeParameters()V
    .locals 2

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 703
    .local v0, oldParams:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 704
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 705
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    if-gtz v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 708
    :cond_0
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    if-gtz v1, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 712
    .end local v0           #oldParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addBlackView()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    return-void
.end method

.method closeAreaTouched()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->unresizeToDefault()V

    .line 306
    return-void
.end method

.method public getAd()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->getAd(Lcom/millennialmedia/android/RequestListener;)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    goto :goto_0
.end method

.method public getAd(Lcom/millennialmedia/android/RequestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V

    .line 502
    return-void
.end method

.method public bridge synthetic getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getListener()Lcom/millennialmedia/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->getMMRequest()Lcom/millennialmedia/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 12
    .parameter "resizeParams"

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 610
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-nez v8, :cond_0

    .line 611
    new-instance v8, Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    .line 612
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const v9, 0x121f0dbe

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setId(I)V

    .line 613
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMAdView$ResizeView;->setBackgroundColor(I)V

    .line 616
    :cond_0
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v8}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 617
    .local v5, parent:Landroid/view/ViewParent;
    if-nez v5, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 619
    .local v0, adViewParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 620
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #adViewParent:Landroid/view/ViewParent;
    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 623
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMAdView$BannerBounds;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 625
    .local v1, bounds:Lcom/millennialmedia/android/MMAdView$BannerBounds;
    iget-boolean v8, p1, Lcom/millennialmedia/android/DTOResizeParameters;->allowOffScreen:Z

    if-nez v8, :cond_2

    .line 626
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateOnScreenBounds()V

    .line 629
    :cond_2
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 630
    .local v4, location:[I
    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 632
    invoke-direct {p0, p0}, Lcom/millennialmedia/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    .line 633
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 634
    .local v3, locAfterAttach:[I
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 636
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->setUnresizeParameters()V

    .line 638
    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int v6, v8, v9

    .line 639
    .local v6, xOld:I
    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    sub-int v7, v8, v9

    .line 641
    .local v7, yOld:I
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 642
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 643
    iget v8, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    add-int/2addr v8, v6

    invoke-direct {p0, v8}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationX(I)V

    .line 644
    iget v8, v1, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    add-int/2addr v8, v7

    invoke-direct {p0, v8}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationY(I)V

    .line 645
    iget-object v8, p1, Lcom/millennialmedia/android/DTOResizeParameters;->customClosePosition:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/millennialmedia/android/MMAdView;->setCloseArea(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    .end local v1           #bounds:Lcom/millennialmedia/android/MMAdView$BannerBounds;
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #locAfterAttach:[I
    .end local v4           #location:[I
    .end local v5           #parent:Landroid/view/ViewParent;
    .end local v6           #xOld:I
    .end local v7           #yOld:I
    :cond_3
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method declared-synchronized handleUnresize()V
    .locals 5

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->removeCloseTouchDelegate()V

    .line 653
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v4

    if-nez v4, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 655
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 656
    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 657
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationX(I)V

    .line 658
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/MMAdView;->callSetTranslationY(I)V

    .line 659
    const/16 v4, -0x32

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->oldWidth:I

    .line 660
    const/16 v4, -0x32

    iput v4, p0, Lcom/millennialmedia/android/MMAdView;->oldHeight:I

    .line 662
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    if-eqz v4, :cond_2

    .line 663
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->isResizing:Z

    .line 664
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v4, p0}, Lcom/millennialmedia/android/MMAdView$ResizeView;->attachToContext(Landroid/view/View;)V

    .line 665
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 666
    .local v3, parent:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 667
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 668
    .local v1, group:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 669
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->view:Lcom/millennialmedia/android/MMAdView$ResizeView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 672
    .end local v1           #group:Landroid/view/ViewGroup;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->isResizing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    .end local v3           #parent:Landroid/view/ViewParent;
    :cond_2
    monitor-exit p0

    return-void

    .line 651
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 241
    const-string v0, "MMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On click for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adimpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 251
    invoke-super/range {p0 .. p5}, Lcom/millennialmedia/android/MMLayout;->onLayout(ZIIII)V

    .line 253
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "windowInFocus"

    .prologue
    .line 514
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->onWindowFocusChanged(Z)V

    .line 515
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v1, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/MMWebView;->isCurrentParent(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    .line 525
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    .line 529
    :cond_1
    return-void
.end method

.method public bridge synthetic removeBlackView()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    return-void
.end method

.method public bridge synthetic setApid(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setBackgroundColor(I)V

    .line 155
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 278
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->height:I

    .line 279
    return-void
.end method

.method public bridge synthetic setIgnoresDensityScaling(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    return-void
.end method

.method public bridge synthetic setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 299
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 300
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 290
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->width:I

    .line 291
    return-void
.end method
