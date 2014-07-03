.class final enum Lcom/nextpeer/android/as$aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/as$aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/as$aa;

.field public static final enum b:Lcom/nextpeer/android/as$aa;

.field private static final synthetic d:[Lcom/nextpeer/android/as$aa;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/nextpeer/android/as$aa;

    const-string v1, "NPDevicePlatformType_iOS"

    invoke-direct {v0, v1, v3, v2}, Lcom/nextpeer/android/as$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$aa;->a:Lcom/nextpeer/android/as$aa;

    new-instance v0, Lcom/nextpeer/android/as$aa;

    const-string v1, "NPDevicePlatformType_Android"

    invoke-direct {v0, v1, v2, v4}, Lcom/nextpeer/android/as$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/as$aa;->b:Lcom/nextpeer/android/as$aa;

    new-array v0, v4, [Lcom/nextpeer/android/as$aa;

    sget-object v1, Lcom/nextpeer/android/as$aa;->a:Lcom/nextpeer/android/as$aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/as$aa;->b:Lcom/nextpeer/android/as$aa;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nextpeer/android/as$aa;->d:[Lcom/nextpeer/android/as$aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nextpeer/android/as$aa;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/as$aa;
    .locals 1

    const-class v0, Lcom/nextpeer/android/as$aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/as$aa;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/as$aa;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/as$aa;->d:[Lcom/nextpeer/android/as$aa;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/as$aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/as$aa;->c:I

    return v0
.end method
