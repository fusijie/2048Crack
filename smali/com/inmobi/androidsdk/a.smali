.class Lcom/inmobi/androidsdk/a;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field private a:Lcom/inmobi/androidsdk/BannerView;

.field private b:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/BannerView;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    .line 23
    iput-object p2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/AnimationType;)V
    .locals 8
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/commons/AnimationType;

    if-ne p1, v0, :cond_1

    .line 33
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 34
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 36
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 37
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 38
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 40
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 42
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/view/animation/Animation;)V

    .line 45
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->b(Landroid/view/animation/Animation;)V

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/BannerView;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    return-void

    .line 46
    :cond_1
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    if-ne p1, v0, :cond_2

    .line 47
    new-instance v0, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget-object v3, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 50
    new-instance v1, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;

    const/high16 v2, 0x4387

    const/high16 v3, 0x43b4

    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 54
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setDuration(J)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setFillAfter(Z)V

    .line 56
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setDuration(J)V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setFillAfter(Z)V

    .line 60
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 61
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 62
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/view/animation/Animation;)V

    .line 63
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->b(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 65
    :cond_2
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/commons/AnimationType;

    if-ne p1, v0, :cond_0

    .line 66
    new-instance v0, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget-object v3, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;-><init>(FFFFFZ)V

    .line 69
    new-instance v1, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;

    const/high16 v2, 0x4387

    const/high16 v3, 0x43b4

    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;-><init>(FFFFFZ)V

    .line 73
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setDuration(J)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setFillAfter(Z)V

    .line 75
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setDuration(J)V

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setFillAfter(Z)V

    .line 79
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 80
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/Rotate3dAnimationVert;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/view/animation/Animation;)V

    .line 82
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->b(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
