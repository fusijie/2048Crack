.class Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextProperty"
.end annotation


# instance fields
.field private final mHeightPerLine:I

.field private final mLines:[Ljava/lang/String;

.field private final mMaxWidth:I

.field private final mTotalHeight:I


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .parameter "pMaxWidth"
    .parameter "pHeightPerLine"
    .parameter "pLines"

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I

    .line 516
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I

    .line 517
    array-length v0, p3

    mul-int/2addr v0, p2

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I

    .line 518
    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;

    .line 519
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .locals 1
    .parameter

    .prologue
    .line 509
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mTotalHeight:I

    return v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .locals 1
    .parameter

    .prologue
    .line 507
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mMaxWidth:I

    return v0
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mLines:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I
    .locals 1
    .parameter

    .prologue
    .line 510
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->mHeightPerLine:I

    return v0
.end method
