unzip 9qtbupwrr6axpdcxhw7s1.zip
mkdir -p SOURCE_DIR/zebra
mkdir -p SOURCE_DIR/random_discovery
for i in $(seq 0 19); do
  mkdir -p SOURCE_DIR/random500_$i
done

cp images.cv_9qtbupwrr6axpdcxhw7s1/data/train/zebra/*.jpg SOURCE_DIR/zebra/
cp images.cv_9qtbupwrr6axpdcxhw7s1/data/test/zebra/*.jpg SOURCE_DIR/zebra/
cp images.cv_9qtbupwrr6axpdcxhw7s1/data/val/zebra/*.jpg SOURCE_DIR/zebra/

cp images.cv_9qtbupwrr6axpdcxhw7s1/data/train/animal\ butterfly\ zebra\ long\ wing/*.jpg SOURCE_DIR/random_discovery/
cp images.cv_9qtbupwrr6axpdcxhw7s1/data/test/animal\ butterfly\ zebra\ long\ wing/*.jpg SOURCE_DIR/random_discovery/
cp images.cv_9qtbupwrr6axpdcxhw7s1/data/val/animal\ butterfly\ zebra\ long\ wing/*.jpg SOURCE_DIR/random_discovery/

for i in $(seq 0 19); do
    cp $(ls SOURCE_DIR/random_discovery/*.jpg | shuf -n 50) SOURCE_DIR/random500_$i/
done