.class final Lcom/nextpeer/android/fu;
.super Lcom/nextpeer/android/fn;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/fu$aa;,
        Lcom/nextpeer/android/fu$ab;
    }
.end annotation


# instance fields
.field private f:Landroid/view/View;

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/ScrollView;

.field private j:Lcom/nextpeer/android/fu$aa;

.field private k:Lcom/nextpeer/android/fu$ab;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dy;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/nextpeer/android/fn;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/fu;->l:Ljava/util/List;

    iput v4, p0, Lcom/nextpeer/android/fu;->q:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nextpeer/android/fu;->g:Landroid/view/LayoutInflater;

    sget v0, Lcom/nextpeer/android/R$layout;->np__popup_vertical:I

    iget-object v1, p0, Lcom/nextpeer/android/fu;->g:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    sget v1, Lcom/nextpeer/android/R$id;->np__popup_vertical_tracks:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nextpeer/android/fu;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    sget v1, Lcom/nextpeer/android/R$id;->np__popup_vertical_scroller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/nextpeer/android/fu;->i:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/fu;->a(Landroid/view/View;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/nextpeer/android/fu;->p:I

    iput v4, p0, Lcom/nextpeer/android/fu;->n:I

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/fu;)Lcom/nextpeer/android/fu$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fu;->j:Lcom/nextpeer/android/fu$aa;

    return-object v0
.end method

.method static synthetic b(Lcom/nextpeer/android/fu;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/fu;->m:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/nextpeer/android/dy;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/fu;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dy;

    return-object v0
.end method

.method public final a(Lcom/nextpeer/android/dy;)V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/fu;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/nextpeer/android/dy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nextpeer/android/dy;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, p0, Lcom/nextpeer/android/fu;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/nextpeer/android/R$layout;->np__action_item_vertical:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/nextpeer/android/R$id;->iv_icon:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/nextpeer/android/R$id;->tv_title:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget v0, p0, Lcom/nextpeer/android/fu;->n:I

    invoke-virtual {p1}, Lcom/nextpeer/android/dy;->c()I

    move-result v1

    new-instance v2, Lcom/nextpeer/android/fv;

    invoke-direct {v2, p0, v0, v1}, Lcom/nextpeer/android/fv;-><init>(Lcom/nextpeer/android/fu;II)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/nextpeer/android/fu;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/nextpeer/android/fu;->h:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/nextpeer/android/fu;->o:I

    invoke-virtual {v1, v4, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/nextpeer/android/fu;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nextpeer/android/fu;->n:I

    iget v0, p0, Lcom/nextpeer/android/fu;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nextpeer/android/fu;->o:I

    return-void

    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Lcom/nextpeer/android/fu$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/fu;->j:Lcom/nextpeer/android/fu$aa;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dy;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dy;

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/fu;->a(Lcom/nextpeer/android/dy;)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nextpeer/android/fu;->a()V

    iput-boolean v2, p0, Lcom/nextpeer/android/fu;->m:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v1, v0, v2

    aget v5, v0, v3

    aget v6, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-direct {v4, v1, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v0, p0, Lcom/nextpeer/android/fu;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/fu;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/nextpeer/android/fu;->q:I

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/fu;->e:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/as;->e:I

    const/16 v6, 0xd

    if-lt v1, v6, :cond_3

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v0, v6, Landroid/graphics/Point;->y:I

    :goto_0
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/nextpeer/android/fu;->q:I

    add-int/2addr v6, v7

    if-le v6, v1, :cond_4

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/nextpeer/android/fu;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    :goto_1
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v7

    if-le v6, v7, :cond_6

    :goto_2
    if-eqz v3, :cond_8

    if-le v5, v6, :cond_7

    const/16 v0, 0xf

    iget-object v5, p0, Lcom/nextpeer/android/fu;->i:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    :goto_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    iget v4, p0, Lcom/nextpeer/android/fu;->p:I

    packed-switch v4, :pswitch_data_0

    :goto_4
    iget-object v3, p0, Lcom/nextpeer/android/fu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v6, p0, Lcom/nextpeer/android/fu;->q:I

    if-le v1, v6, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v6, p0, Lcom/nextpeer/android/fu;->q:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    goto :goto_1

    :cond_5
    iget v1, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    goto :goto_3

    :cond_8
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    if-le v5, v7, :cond_2

    iget-object v5, p0, Lcom/nextpeer/android/fu;->i:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :pswitch_0
    iget-object v4, p0, Lcom/nextpeer/android/fu;->b:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_9

    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopUpMenu_Left:I

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_9
    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopDownMenu_Left:I

    goto :goto_5

    :pswitch_1
    iget-object v4, p0, Lcom/nextpeer/android/fu;->b:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_a

    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopUpMenu_Right:I

    :goto_6
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_a
    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopDownMenu_Right:I

    goto :goto_6

    :pswitch_2
    iget-object v4, p0, Lcom/nextpeer/android/fu;->b:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_b

    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopUpMenu_Center:I

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_b
    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopDownMenu_Center:I

    goto :goto_7

    :pswitch_3
    iget-object v4, p0, Lcom/nextpeer/android/fu;->b:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_c

    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopUpMenu_Reflect:I

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_c
    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopDownMenu_Reflect:I

    goto :goto_8

    :pswitch_4
    iget-object v4, p0, Lcom/nextpeer/android/fu;->b:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_d

    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopUpMenu_Right:I

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_d
    sget v3, Lcom/nextpeer/android/R$style;->NP___QuickActionPopup_PopDownMenu_Right:I

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onDismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/fu;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/fu;->k:Lcom/nextpeer/android/fu$ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/fu;->k:Lcom/nextpeer/android/fu$ab;

    :cond_0
    return-void
.end method
